import SwiftUI

struct JADRView: View {
    let jadr: JADRData
    
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
        .background(Color.pink.opacity(0.2))
        .cornerRadius(10)
        .padding(10)
    }
}

struct JADRData {
    let title: String
    let story: String
    let author: String
}

struct JADRView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADR = JADRData(title: "El Destino de los Enamorados", story: "Había una vez...", author: "Autor Anónimo")
        JADRView(jadr: sampleJADR)
    }
}
