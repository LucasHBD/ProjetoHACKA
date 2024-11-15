//
//  MenuView.swift
//  LootBox
//
//  Created by Turma02-25 on 13/11/24.
//

import SwiftUI

struct MenuView: View {
    @StateObject private var viewmodel = ViewModel()
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
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
                
                VStack {
                    Text("Novidades")
                        .foregroundColor(.white)
                        .padding()
                        .font(.custom("Jomhuria-Regular", size: 54 ))
                    
                    
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack(spacing: 3) {
                            ForEach(viewmodel.game, id: \.self) { view in
                                AsyncImage(url:URL(string:view.image!)){
                                    image in image
                                        .resizable()
                                        .scaledToFit()
                                        .padding()
                                } placeholder: {
                                    ProgressView()
                                }
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    Spacer()
                    
                    Text("Ofertas")
                        .foregroundColor(.white)
                        .padding()
                        .font(.custom("Jomhuria-Regular", size: 54 ))
                    
                    ScrollView(.vertical, showsIndicators: true) {
                        ForEach(viewmodel.game, id: \.self) { view in
                            AsyncImage(url:URL(string:view.image!)){
                                image in image
                                    .resizable()
                                    .scaledToFit()
                                    .padding()
                            } placeholder: {
                                ProgressView()
                            }
                        }
                    }
                    Spacer()
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
