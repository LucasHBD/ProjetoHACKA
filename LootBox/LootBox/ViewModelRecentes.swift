//
//  ViewModel.swift
//  LootBox
//
//  Created by Turma02-25 on 12/11/24.
//

import Foundation

class ViewModelRecentes : ObservableObject{
    @Published var game: [Game] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://192.168.128.26:1880/VisitadosRecente")!){ data, _, error in
            do{
                self.game = try JSONDecoder().decode([Game].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
