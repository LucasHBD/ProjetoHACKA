import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack {
                VStack {
                    HStack {
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
                    

                    Spacer() // Para garantir que a parte inferior da tela seja preenchida
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
