
//
//  File.swift
//  Projet 3
//
//  Created by Anthony KUNG on 28.01.18.
//  Copyright © 2018 Anthony KUNG. All rights reserved.
//

import Foundation

class Team {
    let name : String
    let numberOfCharacter = 3
    var characters = [Character]()
    
    init(name: String) {
        self.name = name
    }

    func createCharacters() {
        for _ in 0..<3 {
            print("\n")
            print("Choose a character :")
            print("1/ Fighter")
            print("2/ Colossus")
            print("3/ Magus")
            print("4/ Dwarf")
            
            var choice = 0
            var nameOfCharacter = ""
            
            repeat {
                choice = Input.inputInt()
                print("\n")
            } while choice != 1 && choice != 2 && choice != 3 && choice != 4
            
            nameOfCharacter = NameService.shared.uniqueCharacterName()
            
            switch choice {
            case 1:
                let fighter = Fighter(name: nameOfCharacter)
                characters.append(fighter)
            case 2:
                let colossus = Colossus(name: nameOfCharacter)
                characters.append(colossus)
            case 3:
                let magus = Magus(name: nameOfCharacter)
                characters.append(magus)
            case 4:
                let dwarf = Dwarf(name: nameOfCharacter)
                characters.append(dwarf)
            default:
                break
            }
        }
    }
    
    func describe() {
        for i in 0..<characters.count {
            let character = characters[i]
            character.describe(index: i+1)
        }
    }
    
    func isCharactersDead() -> Bool {
        var isDead = false
        // tchek healpoint all character
        for character in characters {
        // return true si all chara dead
            if character.healthPoint == 0 {
                isDead = true
            }else{
        // return false si au moins 1 chara is alive
                return false
            }
        }
        return isDead
    }
}
