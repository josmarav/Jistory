import SwiftUI

struct CategoriasAdolView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: ComediaView()) {
                    Text("COMEDIA")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.pink]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                }

                NavigationLink(destination: AccionView()) {
                    Text("ACCION")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                }

                NavigationLink(destination: AmorView()) {
                    Text("AMOR")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.yellow]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                }
                
            
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(20)
           
        }
    }
}

struct ComediaView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("La Loca Aventura de los Payasos")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
                .foregroundColor(.purple)
            
            Text("Autor: Juanito Pérez")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("En un pequeño pueblo, los payasos más divertidos de todos, Tito y Lulo, decidieron hacer travesuras para alegrar a la gente. Con sus narices rojas y risas contagiosas, recorrieron las calles haciendo reír a todos los habitantes. Sus bromas y chistes se volvieron legendarios, y cada vez más personas se unieron a su alegre pandilla. Juntos, vivieron aventuras inolvidables y dejaron una huella de risas y alegría en el corazón de todos.")
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

struct AccionView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("La Misión Imposible")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
                .foregroundColor(.blue)
            
            Text("Autor: María Rodríguez")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Un equipo de agentes secretos liderado por la intrépida Laura se embarca en una misión peligrosa para detener a un villano malvado. Con su astucia y habilidades excepcionales, enfrentan desafíos mortales, escapan de trampas ingeniosas y luchan contra enemigos formidables. A medida que la misión se vuelve más complicada, el equipo se une aún más y demuestra su valentía y lealtad. ¿Podrán completar su misión imposible y salvar al mundo?")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(.black)
            
            Spacer()
        }
        .padding()
        .background(Color.orange)
        .cornerRadius(10)
        .shadow(color: Color.orange.opacity(0.5), radius: 5, x: 0, y: 2)
        .padding()
    }
}

struct AmorView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("El Destino del Corazón")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
                .foregroundColor(.white)
            
            Text("Autor: Ana Gómez")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("En un pequeño pueblo, dos almas perdidas, Laura y Alejandro, se encuentran en el momento más inesperado. Sus miradas se cruzan y sus corazones se entrel azan en un amor profundo y sincero. Juntos, enfrentan pruebas y desafíos, superando obstáculos para mantener su amor intacto. A medida que el tiempo avanza, descubren que el destino los ha unido y que su amor es eterno. Una historia llena de emociones, romance y un final feliz que perdurará para siempre.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
                .foregroundColor(.black)
            
            Spacer()
        }
        .padding()
        .background(Color.pink)
        .cornerRadius(10)
        .shadow(color: Color.pink.opacity(0.5), radius: 5, x: 0, y: 2)
        .padding()
    }
            
}

struct CategoriasAdolView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriasAdolView()
    }
}
