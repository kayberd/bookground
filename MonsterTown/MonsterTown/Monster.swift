//
//  Monster.swift
//  MonsterTown
//
//  Created by Berkay Demirören on 22.11.2022.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"
    
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    static let isTerrifying = true
    
    class var spookyNoise:String {
        return "Grrr..."
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
    
    
}
