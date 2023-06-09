import SwiftUI

struct JADP3View: View {
    let jadp: JADP3Data
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(jadp.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.purple)
            
            Text(jadp.poem)
                .font(.body)
                .foregroundColor(.black)
            
            Text("Autor: \(jadp.author)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .padding(10)
    }
}

struct JADP3Data {
    let title: String
    let poem: String
    let author: String
}

struct JADP3View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADP3 = JADP3Data(title: "Suspiros en la Bruma", poem: "En la bruma del recuerdo...", author: "Autor Anónimo")
        JADP3View(jadp: sampleJADP3)
    }
}
