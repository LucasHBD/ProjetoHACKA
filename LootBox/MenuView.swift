//
//  MenuView.swift
//  LootBox
//
//  Created by Turma02-25 on 13/11/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
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
                    .padding(.horizontal)
                }
                
                VStack {
                    Text("Novidades")
//                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .font(.custom("Jomhuria-Regular", size: 54 ))

                    
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack(spacing: 3) {
                            ForEach(0..<10) { _ in
                                Text("Jogo")
                                    .frame(width: 100, height: 100)
                                    .background(Color.rose)
                                    .cornerRadius(20)
                                    .padding(5)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    Spacer()
                    
                    Text("Ofertas")
//                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .font(.custom("Jomhuria-Regular", size: 54 ))

                    ScrollView(.vertical, showsIndicators: true) {
                        ForEach(0..<20) { _ in
                            Text("  ...exemplo de jogo na promoção...  ")
                                .foregroundColor(.black)
                                .scaledToFit()
                                .background(Color.rose.opacity(100))
                                .cornerRadius(05)
                            
                            Spacer()
                        }
                    }
                    Spacer() 
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
