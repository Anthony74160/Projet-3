//
//  Personnage.swift
//  Projet 3
//
//  Created by Anthony KUNG on 19.01.18.
//  Copyright © 2018 Anthony KUNG. All rights reserved.
//

import Foundation

class Character {
    let name : String
    var healthPoint : Int
    var weapon : Weapon
    var maxHealthPoint : Int

    init(name: String, healthPoint : Int, weapon : Weapon, maxHealthPoint : Int) {
        self.name = name
        self.healthPoint = healthPoint
        self.weapon = weapon
        self.maxHealthPoint = maxHealthPoint
    }
    
    func describe(index: Int) {
        print("\(index)/ " + name + " \(healthPoint) PV " + " \(weapon.damage) DMG ")
    }
    
    func attack(target: Character) {
        target.healthPoint -= self.weapon.damage
        if target.healthPoint < 0 {
            target.healthPoint = 0
        }
        print(name + " hit " + target.name + " and deal \(weapon.damage) damages" )
        print("")
    }
}


