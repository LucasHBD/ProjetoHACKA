import SwiftUI

struct PesquisaView: View {
    @StateObject private var viewmodel = ViewModel()
    // Estado para armazenar o texto da pesquisa
    @State private var pesquisaTexto: String = ""

    var body: some View {
        NavigationStack{
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
                    
                    VStack {
                        // Título da tela, posicionado mais próximo da barra de pesquisa
                        Text("Pesquisa")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top, 10) // Reduzido o padding para aproximar do topo
                        
                        // Barra de pesquisa estilizada
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
                        ScrollView {
                            
                            ForEach(SearchResults, id :\.self){
                                g in

                                    AsyncImage(url: URL(string: "\(g.image!)")){
                                        image in image.image?.resizable()
                                            .scaledToFit()
                                    }.frame( width: 300, height: 150)
                                        .padding(.leading)
                                

                                //                            NavigationLink(destination: PerfilView(SearchResults : g)){
                                //                                Text("\(g.name)")
                                //                            }
                            }
                        }
                        
                        
                        .frame(height: 250) // Altura do campo de pesquisa
                        .background(Color.white.opacity(0.7)) // Fundo semitransparente
                        .cornerRadius(5) // Borda arredondada
                        .padding(.top, 20) // Espaço entre o título e a barra de pesquisa
                        
                        Spacer() // Espaço abaixo para o conteúdo
                        
                    }
                    .padding(.horizontal) // Adiciona um pouco de padding lateral
                    
                }
            }.onAppear() {
                viewmodel.fetch()
            }
        }
        
    }
    var SearchResults: [Game] {
        if pesquisaTexto.isEmpty{
            return viewmodel.game
        } else {
            return viewmodel.game.filter { $0.name!.contains(pesquisaTexto)}
        }
    }
}

#Preview {
    PesquisaView()
}
