import SwiftUI

struct PesquisaView: View {
    
    // Estado para armazenar o texto da pesquisa
    @State private var pesquisaTexto: String = ""
    
    var body: some View {
        ZStack {
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
                
                VStack {
                    Text("Pesquisa")
                        .font(.custom("Jomhuria-Regular", size: 54 ))

                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    HStack {
                        // Ícone de lupa
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading, 10)
                        
                        // Campo de texto para a pesquisa
                        TextField("Digite sua pesquisa", text: $pesquisaTexto)
                            .padding(10)
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(25)
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)// Padding lateral para o campo de texto
                        
                        }
    
                    
                    .frame(height: 50) // Altura do campo de pesquisa
                    .background(Color.white.opacity(0.7)) // Fundo semitransparente
                    .cornerRadius(25) // Borda arredondada
                    .padding(.top, 20) // Espaço entre o título e a barra de pesquisa
                    
                    Spacer() // Espaço abaixo para o conteúdo
                    
                }
                .padding(.horizontal) // Adiciona um pouco de padding lateral
                
            }
        }
    }
}

#Preview {
    PesquisaView()
}
