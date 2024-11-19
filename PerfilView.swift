//
//  PerfilView.swift
//  LootBox
//
//  Created by Turma02-25 on 13/11/24.
//

import SwiftUI
struct PerfilView: View {
    @StateObject private var viewmodel = ViewModel()
    @State var game = Game(_id: "", name: "", category: "", image: "", description: "", platform: "", link: "")
    let url = "http://192.168.128.26:1880/AdicionarVisitado"
    
    var body: some View {
        
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack{

                        Image("controle")
                            .padding(.leading, 30)
                            .padding(.bottom)
                            .ignoresSafeArea()
                           // .offset(x: 20, y:0)
                     //   Spacer()
//                VStack{
//                    HStack{
//                        Spacer()
//                        Image("sino")
//                            .resizable()
//                            .frame(width:30, height: 30)
//                            .ignoresSafeArea()
//                            .padding(.bottom, 50)
//                        // .offset(x:20, y: -12.5)
//                        Image("perfil")
//                            .resizable()
//                            .frame(width:30, height: 30)
//                            .ignoresSafeArea()
//                            .padding(.bottom, 50)
//                    }.padding()
//                    Spacer()
//                }
//               // .offset(CGSize(width: 0, height: -2))
//                .position(CGPoint(x: 170, y: -69))
           
                
                ZStack{
                    Rectangle()
                        .fill(.rose)
                        .frame(width: 285, height: 350)
                        .cornerRadius(10)
                    
                    VStack{
                        
                        VStack{
                            AsyncImage(url: URL(string: "\(game.image!)")){
                                image in image.image?
                                // .resizable()
                                    .resizable()
                                    .frame(width: 138, height: 176)
                                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(10)
                            }
                                VStack{
                                    VStack(alignment: .center){
                                        Text("Nome: \(game.name!)")
                                            .foregroundColor(.roxoClaro)
                                        Text("Categoria: \(game.category!)")
                                            .foregroundColor(.roxoClaro)
                                        
                                        
                                    }
                                    .font(.custom("Jomhuria-Regular", size: 20 ))
                                    
                                    Text("VER JOGO")
                                        .background(.roxoEscuro)
                                        .cornerRadius(5)
                                        .foregroundColor(.white)
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
    
    //#Preview {
    //    PerfilView()
    //}


