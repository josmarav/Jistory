import SwiftUI

struct CategoriasView: View {
    var body: some View {
        VStack {
            Button(action: {
                // Aquí puedes escribir el código para manejar el evento de presionar el botón 1
            }) {
                Text("NIÑO")
            }
            
            Button(action: {
                // Aquí puedes escribir el código para manejar el evento de presionar el botón 2
            }) {
                Text("ADOLECENTE")
            }
            
            Button(action: {
                // Aquí puedes escribir el código para manejar el evento de presionar el botón 3
            }) {
                Text("ADULTO")
            }
            
            // Puedes agregar más botones aquí
        }
    }
}

struct CategoriasView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriasView()
    }
}
