//
//  CardDeck.swift
//  TheGameSet
//
//  Created by Denis Evdokimov on 03.08.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import Foundation
struct CardDeck {
  
    private(set) var deck = [Card]()
    
    init() {
        for number in Card.Variant.allCases{
            for fill in Card.Variant.allCases{
                for color in  Card.Variant.allCases{
                    for shape in  Card.Variant.allCases{
                        let card = Card(color: color, shape: shape, number: number, texture: fill)
                        deck.append(card)
                    }
                }
            }
        }
    }
    
    mutating func dealtCard ()-> Card? {
        if deck.count > 0{
            return deck.remove(at: Int.random(in: 0...deck.count))
        } else {return nil}
    }
}
