//
//  BarView.swift
//  QuickCard
//
//  Created by Danail on 29.11.21.
//

import SwiftUI

struct BarView: View {
    var color = Color.clear
    var width: CGFloat = 0.0
    var height: CGFloat = 0.0
    var label: String = ""
    
    var body: some View {
        VStack {
            Rectangle().fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))).frame(width: width, height: height)
            Text(label)
                .font(.footnote)
                .rotationEffect(.degrees(-75))
                .offset(y: 20)
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(
            color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)),
            width: 20,
            height: 100,
            label: "Events"
        )
    }
}
