//
//  Mage.swift
//  Projet 3
//
//  Created by Anthony KUNG on 19.01.18.
//  Copyright © 2018 Anthony KUNG. All rights reserved.
//

import Foundation

class Magus: Character {
    init(name: String) {
        super.init(name: name, healthPoint: 80, weapon: MagicWand(), maxHealthPoint:80)
    }
    
    override func attack(target: Character) {
        print("Sorry i can't attack")
    }
    
    func heal(target: Character) {
        target.healthPoint += self.weapon.heal
        if target.healthPoint > target.maxHealthPoint {
            target.healthPoint = target.maxHealthPoint
        }
        print(name + " heal " + target.name + " and restore \(weapon.heal) healthpoints" )
    }
}


