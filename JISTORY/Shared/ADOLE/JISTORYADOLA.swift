import SwiftUI

struct JISTORYADOLAView: View {
    let jistory: JistoryAdolAData
    
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

struct JistoryAdolAData {
    let title: String
    let story: String
    let author: String
}

struct JISTORYADOLAView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJistory = JistoryAdolAData(title: "El Gran Desafío", story: "Había una vez...", author: "Autor Anónimo")
        JISTORYADOLAView(jistory: sampleJistory)
    }
}

