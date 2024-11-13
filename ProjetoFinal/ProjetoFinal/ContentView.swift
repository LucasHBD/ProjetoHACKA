//
//  ContentView.swift
//  ProjetoFinal
//
//  Created by Turma02-5 on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            PesquisaView()
                .tabItem {
                    Image(systemName: "star")
                    Text("AAAA")
                }
            PerfilView()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("BBBB")
                }
        }
    }
}

#Preview {
    ContentView()
}
