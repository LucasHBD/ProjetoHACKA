//
//  ContentView.swift
//  aula11-LG
//
//  Created by Turma02-23 on 07/11/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = ViewModel()
    let params = [
                "nome":"DARK SOULS™ III",
                "empresa":"FromSoftware Inc",]
    let url = "http://127.0.0.1:1880/FavoritarJogos"
    
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                Button(action: {
                    postRequest(url: url, params: params){
                                        (result, err)  in
                                        //Aqui você tem seu resultado
                                        if let res:Bool = (result?.values.first as? Bool) {
                                            if(res) {
                                                //Aqui res podera assumir dois valores, true ou false
                                                print("sua requisicao foi realizada com sucesso")
                                            } else {
                                                //Aqui voce pode tratar os erros
                                                print("a requisicao nao funcionou")
                                            }
                                        }
                                    }
                           

                        }, label: {
                            Text("Post")
                                .frame(minWidth: 0, maxWidth: 500)
                                .padding()
                                .background(Color.clear)
                                .foregroundColor(Color.black)
                                .font(.custom("Open Sans", size: 18))
                                .overlay(
                                          RoundedRectangle(cornerRadius: 10)
                                           .stroke(Color.gray, lineWidth: 2)
                                                )
                        })
                
            }.onAppear(){
                model.fetch()
            }.accentColor(.white)
        }
    }
}
#Preview {
    ContentView()
}
