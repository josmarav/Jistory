import SwiftUI

struct JADT4View: View {
    let jadt: JADT4Data
    
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

struct JADT4Data {
    let title: String
    let story: String
    let author: String
}

struct JADT4View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADT4 = JADT4Data(title: "El Pecado Oculto", story: "En los rincones más oscuros de la mente humana...", author: "Autor Anónimo")
        JADT4View(jadt: sampleJADT4)
    }
}
