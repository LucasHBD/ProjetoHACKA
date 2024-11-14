import SwiftUI

struct UsuarioView: View {
    @StateObject var model = ViewModel()
    
    
    // Exemplo de uma lista de itens para o carrossel
    
    var body: some View {
        ZStack {
            // Imagem de fundo
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Spacer()
                    Spacer()
                    Image("controle")
                        .padding(.leading)
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
                
                
                // Seção do perfil
                VStack(spacing: 15) { // Espaçamento entre os elementos
                    // Imagem de perfil
                    Image(systemName: "person.circle.fill") // Aqui você pode usar sua imagem personalizada
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120) // Tamanho maior
                        .clipShape(Circle()) // Torna a imagem circular
                        .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Adiciona uma borda branca à imagem
                        .shadow(radius: 10) // Sombra para dar profundidade
                    
                    // Mensagem de boas-vindas
                    Text("Seja Bem-Vindo(a),")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding([.leading, .trailing, .bottom])
                    
                    // Nome do usuário
                    Text("Nome do Usuário")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 5)
                    
                    // Carrossel abaixo do nome do usuário
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            // Usando ForEach para criar o carrossel com os itens
                            ForEach(model.game, id: \._id){ view in
                                VStack{
                                    Text("\(view.name!)")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding(.bottom, 2)
                                }
                                    
                                    
                                        .padding(.horizontal)
                                 // Adiciona um pouco de padding lateral ao carrossel
                            }
                        }
                        .padding(.horizontal) // Adiciona um pouco de padding lateral
                        .padding(.bottom, 30) // Distância do final da tela
                        
                        Spacer() // Espaço abaixo para ajustar a posição final
                    }
                }
            }
        }.onAppear(){
            model.fetch()
        }.accentColor(.white)
    }
}
        
    #Preview {
        UsuarioView()
    }
    
