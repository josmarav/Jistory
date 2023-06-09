import SwiftUI

struct JistoryAdolAmor2View: View {
    let jistory: JistoryAdolAmor2Data
    
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
        .background(Color.pink.opacity(0.2))
        .cornerRadius(10)
        .padding(10)
    }
}

struct JistoryAdolAmor2Data {
    let title: String
    let story: String
    let author: String
}

struct JistoryAdolAmor2View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJistory = JistoryAdolAmor2Data(title: "Un Amor Eterno", story: "Había una vez...", author: "Autor Anónimo")
        JistoryAdolAmor2View(jistory: sampleJistory)
    }
}
