import SwiftUI

struct JistoryNino3Data {
    let title: String
    let story: String
    let author: String
}

struct JISTORYNINO3View: View {
    let jistory: JistoryNino3Data
    
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

struct JISTORYNINO3View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJistory = JistoryNino3Data(title: "El Gran Aventura", story: "Había una vez...", author: "Autor Anónimo")
        JISTORYNINO3View(jistory: sampleJistory)
    }
}

