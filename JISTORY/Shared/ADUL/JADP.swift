import SwiftUI

struct JADPView: View {
    let jadp: JADPData
    
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
        .background(Color.yellow.opacity(0.2))
        .cornerRadius(10)
        .padding(10)
    }
}

struct JADPData {
    let title: String
    let poem: String
    let author: String
}

struct JADPView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADP = JADPData(title: "Susurros Nocturnos", poem: "En la oscuridad de la noche...", author: "Autor Anónimo")
        JADPView(jadp: sampleJADP)
    }
}
