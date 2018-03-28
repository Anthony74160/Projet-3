//
//  NameService.swift
//  Projet 3
//
//  Created by Anthony KUNG on 21.03.18.
//  Copyright © 2018 Anthony KUNG. All rights reserved.
//

import Foundation

class NameService {
    static let shared = NameService()
    
    private init() {}
    
    var uniqueNames = [String]()
    
    func uniqueCharacterName() -> String {
        var nameOfCharacter = ""
        
        print("Séléctionner nom du personnage :")
        
        repeat {
            nameOfCharacter = Input.inputString()
            if uniqueNames.contains(nameOfCharacter) {
                print("Name is already taken ")
                nameOfCharacter = ""
            }else{
                uniqueNames.append(nameOfCharacter)
            }
        } while nameOfCharacter == ""
        return nameOfCharacter
    }
}
