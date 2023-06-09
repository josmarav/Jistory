import SwiftUI

struct CategoriasAdulView: View {
    @State private var isPoesiaSelected = false
    @State private var isRomanceSelected = false
    @State private var isTrillerSelected = false
    @State private var isTerrorSelected = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: PoesiaView(), isActive: $isPoesiaSelected) {
                    EmptyView()
                }
                Button(action: {
                    isPoesiaSelected.toggle()
                }) {
                    Text("POESIA")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                }
                                
                NavigationLink(destination: RomanceView(), isActive: $isRomanceSelected) {
                    EmptyView()
                }
                Button(action: {
                    isRomanceSelected.toggle()
                }) {
                    Text("ROMANCE")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.red]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                }
                                
                NavigationLink(destination: TrillerView(), isActive: $isTrillerSelected) {
                    EmptyView()
                }
                Button(action: {
                    isTrillerSelected.toggle()
                }) {
                    Text("TRILLER")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.green]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                }
                                
                NavigationLink(destination: TerrorView(), isActive: $isTerrorSelected) {
                    EmptyView()
                }
                Button(action: {
                    isTerrorSelected.toggle()
                }) {
                    Text("TERROR")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.black]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                }
               
            }
            .padding()
        }
    }
}

struct PoesiaView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("¡Versos Inspiradores!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.purple)
            
            Text("Autor: Rosalía Gómez")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("En el jardín de las palabras florecen versos de amor y esperanza. La poesía baila en cada rima, susurra melodías al corazón. Un canto a la vida, a la naturaleza, a los sueños que nos mueven. Cada verso es un abrazo, cada estrofa un suspiro. Sumérgete en estas letras y déjate llevar por su magia infinita.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(.black)
            
            Spacer()
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(10)
        .shadow(color: Color.yellow.opacity(0.5), radius: 5, x: 0, y: 2)
        .padding()
    }
}

struct RomanceView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Amor Eterno")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.green)
            
            Text("Autor: Alejandro Ramírez")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("En el rincón más dulce del corazón nace una historia de amor eterno. Dos almas entrelazadas, unidas por hilos invisibles, desafiando el tiempo y las adversidades. Sus miradas se encuentran en el infinito, sus manos se entrelazan con ternura. Cada latido es una promesa, cada susurro una melodía. Descubre junto a ellos el poder del amor verdadero y la fuerza de los corazones que laten al unísono.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(.black)
            
            Spacer()
        }
        .padding()
        .background(Color.red)
        .cornerRadius(10)
        .shadow(color: Color.red.opacity(0.5), radius: 5, x: 0, y: 2)
        .padding()
    }
}

struct TrillerView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("El Enigma Oculto")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.green)
            
            Text("Autor: Sandra Fernández")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Sumérgete en la oscuridad de un enigma oculto. Un misterio que te hará temblar, que te mantendrá en vilo hasta la última página. El suspense se despliega en cada capítulo, los giros te mantendrán en constante intriga. Desentraña los secretos ocultos, descubre la verdad que se esconde entre las sombras. Una lectura llena de emoción, suspenso y sorpresas que te dejará sin aliento.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(.black)
            
            Spacer()
        }
        .padding()
        .background(Color.blue)
        .cornerRadius(10)
        .shadow(color: Color.blue.opacity(0.5), radius: 5, x: 0, y: 2)
        .padding()
    }
}

struct TerrorView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Nocturno Macabro")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
            Text("Autor: Edgar Sánchez")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Adéntrate en las sombras de la noche y descubre el terror que aguarda en cada esquina. El miedo acecha en cada palabra, el suspenso se desliza por tus venas. Fantasmas susurran al oído, criaturas horripilantes emergen de la oscuridad. Una experiencia aterradora que te mantendrá despierto durante la noche. ¡Prepárate para un viaje al inframundo de tus peores pesadillas!")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(.pink)
            
            Spacer()
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 2)
        .padding()
    }
}

struct CategoriasAdulView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriasAdulView()
    }
}
