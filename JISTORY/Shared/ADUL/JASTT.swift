import SwiftUI

struct JADTTView: View {
    let jadtt: JADTTData
    
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

struct JADTTData {
    let title: String
    let story: String
    let author: String
}

struct JADTTView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADTT = JADTTData(title: "La Casa Encantada", story: "En lo profundo de la oscuridad, algo acecha...", author: "Autor Anónimo")
        JADTTView(jadtt: sampleJADTT)
    }
}
