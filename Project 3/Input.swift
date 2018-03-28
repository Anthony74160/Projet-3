//
//  Input.swift
//  Projet 3
//
//  Created by Anthony KUNG on 12.02.18.
//  Copyright © 2018 Anthony KUNG. All rights reserved.
//

import Foundation

class Input {
    
    static func inputInt() -> Int {
        guard let data = readLine() else { return 0 }
        guard let dataToInt = Int(data) else { return 0 }
        return dataToInt
    }
    
    static func inputString() -> String {
        guard let name = readLine() else { return "" }
        return name
    }
}
