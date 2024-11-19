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
                    Spacer()
                    Text("Desejados")
                        .font(.custom("Jomhuria-Regular", size: 54 ))
                        .bold()
                        .foregroundStyle(.white)
                        
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack(spacing: 3) {
                            ForEach(viewmodel.game, id: \.self) { view in
                                NavigationLink(destination: PerfilView(game: view)) {
                                    AsyncImage(url:URL(string:view.image!)){
                                        image in image
                                            .resizable()
                                            .frame(width: 300, height: 150)
                                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                            .scaledToFit()
                                            .padding()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                }

                            }
                        }
                    }.padding(.bottom, 200)
                }
            }
        }.onAppear() {
            
            viewmodel.fetch()
        }
    }
}


#Preview {
    ContentView()
}


