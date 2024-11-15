//
//  ContentView.swift
//  LootBox
//
//  Created by Turma02-25 on 11/11/24.
//

import SwiftUI

struct WishListView: View {
    
    @StateObject private var viewmodel = ViewModel()
    //@State private var tabSelection: TabBarItem = .Favoritos
    @State private var selection: String = "Menu"
    
    var body: some View {
        NavigationStack{
            ZStack {
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                Image("teste").resizable().ignoresSafeArea()
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
//                        .font(.title)
                        .font(.custom("Jomhuria-Regular", size: 54 ))
                        .bold()
                        .foregroundStyle(.white)
                        .offset(x: 0, y: -30)
                    ScrollView{
//                        ForEach(viewmodel.game, id: \.id){ g in
//                            NavigationLink(destinatio: Tela6(game: g)){
//                                AsyncImage(url: URL(string: "\(g.image)")){ i in
//                                    i.resizable()
//                                        .clipShape(Rectangle())
//                                        .frame(width: 100, height: 100)
//                                        }
//                            placeholder: {
//                                    ProgressView()
//                                }
//                            }
//                        }
                        Spacer()
                    }
                }
            }
        }
    }
}



#Preview {
    ContentView()
}


