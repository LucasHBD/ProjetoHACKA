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
                    Label("Tab 1", systemImage: "house.fill")
                }

                BuscaView()
                    .tabItem {
                        Label("Tab 2", systemImage: "magnifyingglass")
                    }
                WishListView()
                    .tabItem {
                        Label("Tab 2", systemImage: "star.fill")
                    }
                PerfilUserView()
                    .tabItem {
                        Label("Tab 2", systemImage: "person.crop.circle.fill")
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


