//
//  ViewModel.swift
//  aula10-LG
//
//  Created by Turma02-23 on 05/11/24.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var umi : [Umidade] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://127.0.0.1:1880/lerUmidade" )!){ data, _, error in
            do{
                self.umi = try JSONDecoder().decode([Umidade].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
