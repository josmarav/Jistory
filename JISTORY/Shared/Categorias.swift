import SwiftUI

struct CategoriasView: View {
    @State private var showCategoriasAdol = false
    @State private var showCategoriasAdul = false
    @State private var showJistoryNino = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: CategoriasAdolView(), isActive: $showCategoriasAdol) {
                    EmptyView()
                }
                .hidden()
                
                NavigationLink(destination: CategoriasAdulView(), isActive: $showCategoriasAdul) {
                    EmptyView()
                }
                .hidden()
                
                NavigationLink(destination: JistoryNinoView(), isActive: $showJistoryNino) {
                    EmptyView()
                }
                .hidden()
                
                Button(action: {
                    showJistoryNino = true
                }) {
                    Text("NIÑO")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                        .shadow(color: Color.blue.opacity(0.5), radius: 5, x: 0, y: 2)
                }

                Button(action: {
                    showCategoriasAdol = true
                }) {
                    Text("ADOLESCENTE")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                        .shadow(color: Color.green.opacity(0.5), radius: 5, x: 0, y: 2)
                }

                Button(action: {
                    showCategoriasAdul = true
                }) {
                    Text("ADULTO")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.yellow]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                        .shadow(color: Color.orange.opacity(0.5), radius: 5, x: 0, y: 2)
                }
            }
            .padding()
        }
    }
}

struct JistoryNinoView: View {
    var body: some View {
        VStack {
            Text("La Aventura de los Animalitos")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            Text("Autor: Juanito Pérez")
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.bottom, 20)
            
            Text("Había una vez en el bosque encantado, un grupo de animalitos muy curiosos que vivían juntos. Había un conejito saltarín llamado Tito, una osita cariñosa llamada Luna, un ratoncito travieso llamado Max y un pajarito cantarín llamado Pipo. Un día, decidieron aventurarse en busca del tesoro perdido en la cueva misteriosa. Juntos, enfrentaron desafíos emocionantes y resolvieron acertijos astutos. Al final de su aventura, encontraron un tesoro brillante que les recordaba la importancia de la amistad y el trabajo en equipo.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(.black)
            
            Spacer()
        }
        .padding()
        .background(Color(.systemGreen))
        .cornerRadius(10)
        .padding()
    }
}

struct CategoriasView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriasView()
    }
}
