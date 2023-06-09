import SwiftUI

struct JADR2View: View {
    let jadr: JADR2Data
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(jadr.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.red)
            
            Text(jadr.story)
                .font(.body)
                .foregroundColor(.black)
            
            Text("Autor: \(jadr.author)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(10)
        .padding(10)
    }
}

struct JADR2Data {
    let title: String
    let story: String
    let author: String
}

struct JADR2View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADR2 = JADR2Data(title: "El Encuentro Inesperado", story: "En una fría noche de invierno...", author: "Autor Anónimo")
        JADR2View(jadr: sampleJADR2)
    }
}
