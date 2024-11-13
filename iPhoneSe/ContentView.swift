//  Anna Carolinne HackATruck 2024 IFRN Campus Natal Central

import SwiftUI

struct ContentView: View {
    @State private var tabSelection: TabBarItem = .Favoritos
    @State private var selection: String = "Menu"
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
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


            VStack {
                VStack {
                    HStack {
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        Image("controle")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            Spacer()
                        
                        Image("sino")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                        
                        Image("perfil")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                    }
                    .padding(.horizontal)
                }

                VStack {
                    Text("Novidades")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .cornerRadius(10)
                    
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
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()

                    // Textos para as ofertas
                    ForEach(0..<3) { _ in
                        Text("  ...exemplo de jogo na promoção...  ")
                            .foregroundColor(.black)
                            .scaledToFit()
                            .background(Color.rose.opacity(100))
                            .cornerRadius(05)
                            .padding()
                    }

                    Spacer() // Para garantir que a parte inferior da tela seja preenchida
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

#Preview {
    ContentView()
}
