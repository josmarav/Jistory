import SwiftUI

struct JADT2View: View {
    let jadt: JADT2Data
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(jadt.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text(jadt.story)
                .font(.body)
                .foregroundColor(.gray)
            
            Text("Autor: \(jadt.author)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10)
        .padding(10)
    }
}

struct JADT2Data {
    let title: String
    let story: String
    let author: String
}

struct JADT2View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADT2 = JADT2Data(title: "La Sombra del Pasado", story: "En las profundidades de la oscuridad...", author: "Autor Anónimo")
        JADT2View(jadt: sampleJADT2)
    }
}
