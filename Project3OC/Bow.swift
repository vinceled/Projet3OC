//
//  Bow.swift
//  Project3OC
//
//  Created by Mark LEDOUX on 26/06/2019.
//  Copyright © 2019 Mark LEDOUX. All rights reserved.
//

import Cocoa

class Bow: Weapon {
    override init(name: String, damage: Int) {
        super.init(name: name, damage: damage)
        self.name = "Bow"
        self.damage = 50
    }
}
