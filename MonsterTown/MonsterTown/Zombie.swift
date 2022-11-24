//
//  Zombie.swift
//  MonsterTown
//
//  Created by Berkay Demirören on 22.11.2022.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    internal private(set) var isFallingApart = false
    
    override func terrorizeTown() {
        if !isFallingApart {
            town?.changePopulation(by: -10)
        }
        super.terrorizeTown()
        regenerate()
    }
    
    override class var spookyNoise: String {
        return "Brainnsss ...."
    }
    
    
    func regenerate() {
        walksWithLimp = false
    }
}
