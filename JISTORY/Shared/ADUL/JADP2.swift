import SwiftUI

struct JADP2View: View {
    let jadp: JADP2Data
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(jadp.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.purple)
            
            Text(jadp.poem)
                .font(.body)
                .foregroundColor(.black)
            
            Text("Autor: \(jadp.author)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(10)
        .padding(10)
    }
}

struct JADP2Data {
    let title: String
    let poem: String
    let author: String
}

struct JADP2View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADP2 = JADP2Data(title: "El Silencio de la Noche", poem: "En la penumbra de la noche silente...", author: "Autor Anónimo")
        JADP2View(jadp: sampleJADP2)
    }
}
