import SwiftUI

struct JistoryAdolAmor3View: View {
    let jistory: JistoryAdolAmor3Data
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(jistory.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.red)
            
            Text(jistory.story)
                .font(.body)
                .foregroundColor(.black)
            
            Text("Autor: \(jistory.author)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .cornerRadius(10)
        .padding(10)
    }
}

struct JistoryAdolAmor3Data {
    let title: String
    let story: String
    let author: String
}

struct JistoryAdolAmor3View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJistory = JistoryAdolAmor3Data(title: "Un Amor Verdadero", story: "Érase una vez...", author: "Autor Anónimo")
        JistoryAdolAmor3View(jistory: sampleJistory)
    }
}
