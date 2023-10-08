//
//  CardData.swift
//  Design Travel App
//
//  Created by Max Prx on 05/04/2023.
//

import Foundation

struct CardModel: Identifiable {
    var id = UUID().uuidString
    var image: String
    var title: String
    var text: String
}
