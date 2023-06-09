import SwiftUI

struct JADTT2View: View {
    let jadtt: JADTT2Data
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(jadtt.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.red)
            
            Text(jadtt.story)
                .font(.body)
                .foregroundColor(.gray)
            
            Text("Autor: \(jadtt.author)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10)
        .padding(10)
    }
}

struct JADTT2Data {
    let title: String
    let story: String
    let author: String
}

struct JADTT2View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADTT2 = JADTT2Data(title: "El Pasaje de los Susurros", story: "En lo más profundo de la noche, los susurros acechan...", author: "Autor Anónimo")
        JADTT2View(jadtt: sampleJADTT2)
    }
}
