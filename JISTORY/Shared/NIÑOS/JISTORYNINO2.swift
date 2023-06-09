import SwiftUI

struct JistoryNino2Data {
    let title: String
    let story: String
    let author: String
}

struct JISTORYNINO2View: View {
    let jistory: JistoryNino2Data
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(jistory.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
            Text(jistory.story)
                .font(.body)
                .foregroundColor(.black)
            
            Text("Autor: \(jistory.author)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.yellow.opacity(0.3))
        .cornerRadius(10)
        .padding(10)
    }
}

struct JISTORYNINO2View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJistory = JistoryNino2Data(title: "El Gran Aventura", story: "Había una vez...", author: "Autor Anónimo")
        JISTORYNINO2View(jistory: sampleJistory)
    }
}
