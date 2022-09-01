//
//  CardView.swift
//  QuickCard
//
//  Created by Danail on 29.11.21.
//

import SwiftUI

struct CardView: View {
    
    @State var user: User
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 300, height: 200)
                .cornerRadius(20)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            HStack {
                VStack(alignment: .leading){
                    Text("\(user.firstName) \(user.lastName)")
                    
                    Text("\(user.title)")
                    Spacer()
                    ImageLabelView(imageName: "envelope.fill", text: $user.email)
                    ImageLabelView(imageName: "link", text: $user.companyUrl)
                    ImageLabelView(imageName: "location.fill", text: $user.address)
                    
                } .padding()
                .foregroundColor(.white)
            }
        }  .frame(width: 300, height: 200)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(user: User(firstName: "Hans", lastName: "Schmidt", title: "Herr", email: "hansschmidt@mail.de", companyUrl: "mail.de", address: "Frankfurt Oder 15900",
                            visit: Visit(views: 10, events: 20, badges: 3, actions: 40, duration: 50)
        )
        )
    }
}
