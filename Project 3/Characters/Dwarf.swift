//
//  Nain.swift
//  Projet 3
//
//  Created by Anthony KUNG on 19.01.18.
//  Copyright © 2018 Anthony KUNG. All rights reserved.
//

import Foundation

class Dwarf: Character {
    init(name: String) {
        super.init(name: name, healthPoint: 50, weapon: Axe(), maxHealthPoint: 50)
    }
}
