//
//  main.swift
//  Projet 3
//
//  Created by Anthony KUNG on 19.01.18.
//  Copyright © 2018 Anthony KUNG. All rights reserved.
//

import Foundation

class Game {
    
    // Variable :
    var teamArray = [Team]()
    
    // Function :
    func start() {
        print("Welcome in light-fight !")
        print("")
        for _ in 0..<2 {
            print("Please choose a name for your team :")
            let team = createTeam()
            teamArray.append(team)
            print("Team create")
            print("\n")
        }
        fight()
        victory()
    }
    
    func createTeam() -> Team {
        var teamName = ""
        repeat {
            teamName = Input.inputString()
        } while teamName == ""
        let team = Team(name: teamName)
        team.createCharacters()
        return team
    }
    
    func fight() {
        while true  {
            for i in 0..<teamArray.count {
                // Afficher equipe du 1er joueur
                print(" Pleese choose a character for attack or heal : ")
                print("")
                teamArray[i].describe()
                // Selectionner un personnage qui va joue
                var choice = 0
                
                repeat {
                    choice = Input.inputInt()
                    print("\n")
                } while choice != 1 && choice != 2 && choice != 3
                let character = teamArray[i].characters[choice-1]
                magicChest(target: character)
                // Identifier le perso (heal ou degat)
                // Si c'est un mage
                if let magus = character as? Magus{
                    // Afficher equipe du mage
                    print(" Pleese choose a character for heal : ")
                    print("")
                    teamArray[i].describe()
                    // Selectionner le perso a soigner
                    repeat {
                        choice = Input.inputInt()
                        print("")
                    } while choice != 1 && choice != 2 && choice != 3
                    // Soigner le personnage
                    magus.heal(target: teamArray[i].characters[choice-1])
                }else{
                    if i == 0 {
                        // Afficher equipe adverse
                        print(" Pleese choose an enemy for attack : ")
                        print("")
                        teamArray[i+1].describe()
                        // Selectionner le perso a attaquer
                        repeat {
                            choice = Input.inputInt()
                            print("\n")
                        } while choice != 1 && choice != 2 && choice != 3
                        character.attack(target: teamArray[i+1].characters[choice-1])
                        if teamArray[i+1].isCharactersDead() {
                            return
                        }
                    }else {
                        // Afficher equipe adverse
                        print(" Pleese choose an enemy for attack : ")
                        print("")
                        teamArray[i-1].describe()
                        // Selectionner le perso a attaquer
                        repeat {
                            choice = Input.inputInt()
                            print("\n")
                        } while choice != 1 && choice != 2 && choice != 3
                        character.attack(target: teamArray[i-1].characters[choice-1])
                        if teamArray[i-1].isCharactersDead() {
                            return
                        }
                    }
                }
            }
        }
    }
    
    func victory() {
        for team in teamArray {
            if !team.isCharactersDead() {
                print(team.name + " Congratulation !")
            }
        }
    }
    
    func magicChest(target: Character) {
        let ramdomNumber = arc4random_uniform(5)
        if ramdomNumber == 2 {
            print("Congratulation you charactere find a MagicChest ! ")// Print d'intro du coffre
            // Verfier si mage
            if target is Magus{
                // cree superheal
                 let superHeal = Superheal()
                // donner au mage
                target.weapon = superHeal
                print("Your character  ")
                // si pas mage
            } else {
                // cree super damage
                let superDamage = Superdamage()
                // donner la super
                target.weapon = superDamage
                print("Your")
            }
        }
    }
}

