//
//  Weapon.swift
//  Projet 3
//
//  Created by Anthony KUNG on 29.01.18.
//  Copyright © 2018 Anthony KUNG. All rights reserved.
//

import Foundation

class Weapon {
    var name : String
    var damage : Int
    var heal : Int
    
    init(name: String, damage: Int, heal: Int) {
        self.name = name
        self.damage = damage
        self.heal = heal
    }
}
