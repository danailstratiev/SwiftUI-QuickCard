//
//  ImageLabelView.swift
//  QuickCard
//
//  Created by Danail on 29.11.21.
//

import SwiftUI

struct ImageLabelView: View {
    var imageName: String
    @Binding var text: String
    
    var body: some View {
        HStack{
            Image(systemName: imageName)
                .foregroundColor(.orange)
            Text(text)
        }
    }
}


struct ImageLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLabelView(
            imageName: "envelope.fill",
            text: .constant("Burgas 80000")
        )
    }
}
