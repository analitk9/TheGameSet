//
//  Card.swift
//  TheGameSet
//
//  Created by Denis Evdokimov on 03.08.2020.
//  Copyright © 2020 Denis Evdokimov. All rights reserved.
//

import Foundation

struct Card {
    enum Variant: Int, CaseIterable {
        case v1 = 1
        case v2
        case v3
    }
  private  let color: Variant
  private  let shape: Variant
  private  let number: Variant
  private  let texture: Variant
    
    init(color: Variant, shape: Variant, number: Variant, texture: Variant) {
        self.color = color
        self.shape = shape
        self.number = number
        self.texture = texture
    }
}


