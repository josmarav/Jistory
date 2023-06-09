import SwiftUI

struct JADT3View: View {
    let jadt: JADT3Data
    
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

struct JADT3Data {
    let title: String
    let story: String
    let author: String
}

struct JADT3View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADT3 = JADT3Data(title: "El Enigma Oscuro", story: "En un laberinto de secretos y peligros...", author: "Autor Anónimo")
        JADT3View(jadt: sampleJADT3)
    }
}
