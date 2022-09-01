//
//  VisitorInfoVIew.swift
//  QuickCard
//
//  Created by Danail on 29.11.21.
//

import SwiftUI

struct VisitorInfoVIew: View {
    
    @State var user: User
    @State var isScaled = false
    @State var isChartLoaded = false
    
    var body: some View {
        VStack{
            CardView(user: user)
                .scaleEffect(isScaled ? 1.2 : 1.0)
                .animation(.default)
                .gesture(TapGesture()
                            .onEnded {
                                self.isScaled.toggle()
                            }
                         
                )
            GeometryReader { proxy in
                HStack(alignment: .bottom){
                    BarView(color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), width: proxy.size.width * 0.15, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.views) : 0.0, label: "Views")
                    BarView(color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), width: proxy.size.width * 0.15, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.events) : 0.0, label: "Events")
                    BarView(color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), width: proxy.size.width * 0.15, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.badges) : 0.0, label: "Badges")
                    BarView(color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), width: proxy.size.width * 0.15, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.actions) : 0.0, label: "Actions")
                    BarView(color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), width: proxy.size.width * 0.15, height: self.isChartLoaded ? proxy.size.height / CGFloat(self.user.visit.actions) : 0.0, label: "Duration")
                }.frame(height: 0.5 * proxy.size.height)
                .animation(.easeInOut(duration: 2.0))
                .onAppear{
                    self.isChartLoaded = true
                }
                .padding(.horizontal)
            }
        }
    }
}

struct VisitorInfoVIew_Previews: PreviewProvider {
    static var previews: some View {
        VisitorInfoVIew(
            user: User(firstName: "Hans",
                       lastName: "Schmidt",
                       title: "Developer",
                       email: "hansschmidt@mail.de",
                       companyUrl: "mail.de",
                       address: "Frankfurt Oder 15900",
                       visit: Visit(views: 10, events: 20, badges: 3, actions: 40, duration: 50)
            ))
    }
}

