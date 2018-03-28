//
//  Combattant.swift
//  Projet 3
//
//  Created by Anthony KUNG on 19.01.18.
//  Copyright © 2018 Anthony KUNG. All rights reserved.
//

import Foundation

class Fighter: Character {
    init(name: String) {
        super.init(name: name, healthPoint: 100, weapon: Sword(), maxHealthPoint: 100)
}
}
