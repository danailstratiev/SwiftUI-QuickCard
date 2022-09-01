//
//  ContentView.swift
//  QuickCard
//
//  Created by Danail on 28.11.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false
            ) {
                VStack {
                    ForEach(User.users){ user in
                        NavigationLink(
                            destination: VisitorInfoVIew(user: user),
                            label: {
                                CardView(user: user).padding(.vertical)
                            })
                    }
                }
            }
        }.navigationBarTitle("Quick Card")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

