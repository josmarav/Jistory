import SwiftUI

struct JADR4View: View {
    let jadr: JADR4Data
    
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
        .background(LinearGradient(gradient: Gradient(colors: [.orange, .yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(10)
        .padding(10)
    }
}

struct JADR4Data {
    let title: String
    let story: String
    let author: String
}

struct JADR4View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADR4 = JADR4Data(title: "Destino Entrelazado", story: "En un mundo donde el amor...", author: "Autor Anónimo")
        JADR4View(jadr: sampleJADR4)
    }
}
