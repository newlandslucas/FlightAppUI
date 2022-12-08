//
//  Card.swift
//  FlightAppUI
//
//  Created by Lucas Newlands on 08/12/22.
//

import SwiftUI

//MARK: Card Model and Samples

struct Card: Identifiable {
    var id: UUID = .init()
    var cardImage: String
}

var sampleCards: [Card] = [
    .init(cardImage: "Card 1"),
    .init(cardImage: "Card 2"),
    .init(cardImage: "Card 3")
]
