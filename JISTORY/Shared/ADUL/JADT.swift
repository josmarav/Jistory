import SwiftUI

struct JADTView: View {
    let jadt: JADTData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(jadt.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text(jadt.story)
                .font(.body)
                .foregroundColor(.gray)
            
            Text("Autor: \(jadt.author)")
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10)
        .padding(10)
    }
}

struct JADTData {
    let title: String
    let story: String
    let author: String
}

struct JADTView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJADT = JADTData(title: "El Misterio sin Resolver", story: "En un oscuro rincón de la ciudad...", author: "Autor Anónimo")
        JADTView(jadt: sampleJADT)
    }
}
