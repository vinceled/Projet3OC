//
//  Characters.swift
//  Project3OC
//
//  Created by Mark LEDOUX on 05/06/2019.
//  Copyright © 2019 Mark LEDOUX. All rights reserved.
//

import Foundation

class Character {
    enum Gender {
        case male, female
    }

    var name = ""
    var healthPoints: Int
    var gender: Gender
    var weapon: Weapon



    init(name: String, gender: Gender) {
        self.name = name
        self.healthPoints = 0
        self.gender = .male
        self.weapon = Weapon(name: "Large Sword", damage: 150)
    }

    func attack(target: Character) {
        if healthPoints > 0 {
            target.healthPoints -= self.weapon.damage
            print("\(self.name) used \(self.weapon.name) and inflicted \(self.weapon.damage) damage points to \(target.name), now \(target.name) only has \(target.healthPoints) HP left. ")
        } else {
            print("This character is already dead you cannot attack him anymore.")
        }

    }

    func attackTarget(target: Character) -> Character {
       attack(target: target)
        if let target = readLine() {
            if let targetInt = Int(target) {
                switch targetInt {
                case 1 :
                    return player2.team[0]
                case 2 :
                    return player2.team[1]
                case 3 :
                    return player2.team[2]
                default :
                    print("An error has occured, please enter 1, 2 or 3")

                }
            }
        }
        return attackTarget(target: target)
    }

}