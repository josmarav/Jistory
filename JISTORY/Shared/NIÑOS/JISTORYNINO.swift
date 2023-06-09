import SwiftUI

struct JistoryNinoData {
    let title: String
    let story: String
    let author: String
}

struct JISTORYNINOView: View {
    let jistory: JistoryNinoData
    
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

struct JISTORYNINOView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJistory = JistoryNinoData(title: "El Gran Aventura", story: "Había una vez...", author: "Autor Anónimo")
        JISTORYNINOView(jistory: sampleJistory)
    }
}

