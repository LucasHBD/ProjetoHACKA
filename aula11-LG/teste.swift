//
//  teste.swift
//  aula11-LG
//
//  Created by Turma02-23 on 12/11/24.
//

import Foundation

func postRequest(url: String, params: [String: String],
                 completion: @escaping ([String: Any]?, Error?) -> Void){
    //URL válida
    guard let URL = URL(string: url) else {
        completion(nil, nil)
        return
    }
        
    //Cria a representacão da requisição
    let request = NSMutableURLRequest(url: URL)

    //Converte as chaves em valores pares para os parametros em formato de String
    let postString = params.map { "\($0.0)=\($0.1)" }.joined(separator: "&")

    //Atribui à requisiçāo o método POST
    request.httpMethod = "POST"

    //Codifica o corpo da mensagem em "data" usando utf8
    request.httpBody = postString.data(using: String.Encoding.utf8)


    //Cria a tarefa de requisição
    let task = URLSession.shared.dataTask(with: request as URLRequest) {
        (data, response, error) in
        do {

            if let data = data {
                //A resposta chegou
                let response = try JSONSerialization.jsonObject(with: data, options: [])
                completion(response as? [String : Any], nil)
            }
            else {
                //Não houve resposta
                completion(nil, nil)
            }
        } catch let error as NSError {
            //Houve um erro na comunicao com o servidor
            completion(nil, error)
        }
    }


    //Aciona a tarefa
    task.resume()
}

//Coloque a URL da sua API aqui
let url = "http://www.SuaURL.com"

//Aqui vão os parâmetros da sua requisição
let params = [
            "nome":"Matheus Gois",
            "sobreNome":"Gois",
        ]

