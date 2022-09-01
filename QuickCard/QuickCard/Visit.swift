//
//  Visit.swift
//  QuickCard
//
//  Created by Danail on 29.11.21.
//

import Foundation

struct Visit: Identifiable {
    let id = UUID()
    let views: Int
    let events: Int
    let badges: Int
    let actions: Int
    let duration: Int
}
