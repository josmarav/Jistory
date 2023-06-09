import SwiftUI

struct JADR3View: View {
    let jadr: JADR3Data
    
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
        .background(LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(10)
        .padding(10)
    }
}

struct JADR3Data {
    let title: String
    let story: String
    let author: String
}

struct JADR3View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADR3 = JADR3Data(title: "Bajo la Luz de la Luna", story: "En una noche estrellada...", author: "Autor Anónimo")
        JADR3View(jadr: sampleJADR3)
    }
}
