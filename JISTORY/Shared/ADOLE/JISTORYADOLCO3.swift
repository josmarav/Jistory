import SwiftUI

struct JISTORYADOLCO3View: View {
    let jistory: JistoryAdolCo3Data
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(jistory.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.purple)
            
            Text(jistory.story)
                .font(.body)
                .foregroundColor(.black)
            
            Text("Autor: \(jistory.author)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(10)
    }
}

struct JistoryAdolCo3Data {
    let title: String
    let story: String
    let author: String
}

struct JISTORYADOLCO3View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJistory = JistoryAdolCo3Data(title: "El Gran Desafío", story: "Había una vez...", author: "Autor Anónimo")
        JISTORYADOLCO3View(jistory: sampleJistory)
    }
}

