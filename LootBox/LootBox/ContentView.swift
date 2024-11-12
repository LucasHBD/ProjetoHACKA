//
//  ContentView.swift
//  LootBox
//
//  Created by Turma02-25 on 11/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewmodel = ViewModel()
    @State private var tabSelection: TabBarItem = .Favoritos
    @State private var selection: String = "Menu"
    
    var body: some View {
        NavigationStack{
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                Image("teste").resizable().ignoresSafeArea()
                CustomTabBarContainerView(selection: $tabSelection) {
                    TestTabView(text: "1")
                        .tabBarItem(tab: .Menu, selection: $tabSelection)
                    
                    TestTabView(text: "2")
                        .tabBarItem(tab: .Pesquisa, selection: $tabSelection)

                    TestTabView(text: "3")
                        .tabBarItem(tab: .Favoritos, selection: $tabSelection)
                    
                    TestTabView(text: "4")
                        .tabBarItem(tab: .Perfil, selection: $tabSelection)
                }
                .ignoresSafeArea(.keyboard, edges: .bottom)
                VStack{
                    HStack{
                        Spacer()
                        Spacer()
                        Image("controle")
                            .padding(.leading, 30)
                            .padding(.bottom)
                            .ignoresSafeArea()
                            .offset(x: 20, y:0)
                        Spacer()
                        Image("sino")
                            .resizable()
                            .frame(width:30, height: 30)
                            .ignoresSafeArea()
                            .padding(.bottom, 50)
                            .offset(x:20, y: -12.5)
                        Image("perfil")
                            .resizable()
                            .frame(width:30, height: 30)
                            .ignoresSafeArea()
                            .padding(.bottom, 50)
                            .offset(x:30, y: -12.5)
                        Spacer()
                    }
                    Text("Desejados")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.white)
                        .offset(x: 0, y: -30)
                    ScrollView{
                        ForEach(viewmodel.game, id: \.id){ g in
                            NavigationLink(destinatio: Tela6(game: g)){
                                AsyncImage(url: URL(string: "\(g.image)")){ i in
                                    i.resizable()
                                        .clipShape(Circle())
                                        .frame(width: 100, height: 100)
                                        } 
                            placeholder: {
                                    ProgressView()
                                }
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
    struct TestTabView: View {
        
        let text: String
        @State private var textFieldText: String = ""
        
        init(text: String) {
            self.text = text
            print("INIT" + text)
        }
        
        var body: some View {
            VStack {
                Text(text)
                    .onAppear {
                        print("ONAPPEAR" + text)
                }
                
            }
        }
    }
    }
//}



#Preview {
    ContentView()
}


