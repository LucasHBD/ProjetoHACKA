//
//  TabBarItem.swift
//  SwiftfulThinkingAdvancedLearning
//
//  Created by Nick Sarno on 9/6/21.
// 

import Foundation
import SwiftUI

//struct TabBarItem: Hashable {
//    let iconName: String
//    let title: String
//    let color: Color
//}

enum TabBarItem: Hashable {
    case Menu, Pesquisa, Favoritos, Perfil
    
    var iconName: String {
        switch self {
        case .Menu: return "house.fill"
        case .Pesquisa: return "magnifyingglass"
        case .Favoritos: return "star.fill"
        case .Perfil: return "person.crop.circle.fill"
        }
    }
    
    var title: String {
        switch self {
        case .Menu: return "Menu"
        case .Pesquisa: return "Pesquisa"
        case .Favoritos: return "Favoritos"
        case .Perfil: return "Perfil"
        }
    }
    
    var color: Color {
        switch self {
        case .Menu: return Color("azul")
        case .Pesquisa: return Color("azul")
        case .Favoritos: return Color("azul")
        case .Perfil: return Color("azul")
        }
    }
}
