//
//  ContentView.swift
//  tela_06
//
//  Created by Turma02-1 on 12/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
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
                ZStack{
                    Rectangle()
                        .fill(.rose)
                        .frame(width: 285, height: 231)
                        .cornerRadius(10)
                    
                    VStack{
                        
                        HStack{
                            Rectangle()
                                .fill(.white)
                                .frame(width: 138, height: 176)
                                .cornerRadius(10)
                            VStack{
                                VStack(alignment: .leading){
                                    Text("Nome:")
                                        .foregroundColor(.white)
                                    Text("Preço:")
                                        .foregroundColor(.white)
                                    Text("Site:")
                                        .foregroundColor(.white)
                                    
                                }
                                .font(.custom("Jomhuria-Regular", size: 30 ))
                                
                                Text("VER JOGO")
                                        .background(.roxoEscuro)
                                        .cornerRadius(5)
                                        .foregroundColor(.white)
                                        .padding(.top)
                                        .padding()
                                        .font(.custom("Jomhuria-Regular", size: 34 ))
                            }
                        
                        }
                    }
                }
                Spacer()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
