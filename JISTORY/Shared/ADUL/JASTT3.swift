import SwiftUI

struct JADTT3View: View {
    let jadtt: JADTT3Data
    
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

struct JADTT3Data {
    let title: String
    let story: String
    let author: String
}

struct JADTT3View_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADTT3 = JADTT3Data(title: "La Presencia Oscura", story: "En el rincón más sombrío de la mente humana, algo acecha...", author: "Autor Anónimo")
        JADTT3View(jadtt: sampleJADTT3)
    }
}
