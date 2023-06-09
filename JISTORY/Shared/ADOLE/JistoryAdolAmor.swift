import SwiftUI

struct JistoryAdolAmorView: View {
    let jistory: JistoryAdolAmorData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(jistory.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .padding(.bottom, 8)
            
            Text(jistory.story)
                .font(.body)
                .foregroundColor(.black)
            
            Text("Autor: \(jistory.author)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding(16)
        .background(
            LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .cornerRadius(10)
        .padding(10)
    }
}

struct JistoryAdolAmorData {
    let title: String
    let story: String
    let author: String
}

struct JistoryAdolAmorView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJistory = JistoryAdolAmorData(title: "Un Amor Inolvidable", story: "Érase una vez...", author: "Autor Anónimo")
        JistoryAdolAmorView(jistory: sampleJistory)
    }
}
