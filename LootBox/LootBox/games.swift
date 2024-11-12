//
//  games.swift
//  LootBox
//
//  Created by Turma02-25 on 12/11/24.
//

import Foundation

struct Game : Codable{
    let _id: String
    let name: String?
    let category: String?
    let image: String?
    let description: String?
    let platform: String?
    let link: String?
}
