//
//  User.swift
//  QuickCard
//
//  Created by Danail on 29.11.21.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let title: String
    var email: String
    var companyUrl: String
    var address: String
    var visit: Visit
}

extension User {
    static let users = [
        User(firstName: "John", lastName: "Smith", title: "Mr.", email: "johnsmith@mail.us", companyUrl: "mail.us", address: "New York 51600", visit: Visit(views: 10, events: 20, badges: 12, actions: 30, duration: 50)),
        User(firstName: "Steven", lastName: "Johnson", title: "Mr.", email: "stevenjohnson@mail.de", companyUrl: "mail.us", address: "Miami 15800",
             visit: Visit(views: 30, events: 30, badges: 6, actions: 50, duration: 60)),
        User(firstName: "Helen", lastName: "Wilson", title: "Frau", email: "helenwilson@mail.us", companyUrl: "mail.us", address: "Los Angeles 90210",
             visit: Visit(views: 50, events: 40, badges: 15, actions: 60, duration: 70)),
    ]
}
