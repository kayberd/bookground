//
//  main.swift
//  MonsterTown
//
//  Created by Berkay Demirören on 22.11.2022.
//

import Foundation

var myTown = Town()
myTown.changePopulation(by: 500)

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
fredTheZombie.walksWithLimp = true

   


