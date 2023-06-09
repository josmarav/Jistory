import SwiftUI

struct JISTORYADOLA2View: View {
    let jistory: JistoryAdolA2Data
    
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

struct JistoryAdolA2Data {
    let title: String
    let story: String
    let author: String
}

struct JISTORYADOLA2View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJistory = JistoryAdolA2Data(title: "El Gran Desafío", story: "Había una vez...", author: "Autor Anónimo")
        JISTORYADOLA2View(jistory: sampleJistory)
    }
}

