//
//  ContentView.swift
//  LootBox
//
//  Created by Turma02-25 on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                NavigationStack {
                    MenuView()
                        .toolbarBackground(.yellow,
                                           for: .navigationBar)
                        .toolbarBackground(.visible,
                                           for: .navigationBar)
                }
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

                PesquisaView()
                    .tabItem {
                        Label("Pesquisa", systemImage: "magnifyingglass")
                    }
                WishListView()
                    .tabItem {
                        Label("Desejados", systemImage: "star.fill")
                    }
                UsuarioView()
                    .tabItem {
                        Label("Perfil", systemImage: "person.crop.circle.fill")
                    }
            }
            .toolbarBackground(.rose, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            //.toolbarColorScheme(.dark, for: .tabBar)
        }.accentColor(.azul)
    }
}



#Preview {
    ContentView()
}


