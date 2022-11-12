import Foundation
import Darwin

// Listing 11.1 Creating a set
var groceryList = Set<String>(["Apples", "Oranges"])

// Listing 11.2 Creating a set using array literal syntax
var groceryList_1: Set = ["Apples", "Oranges"]

// Listing 11.3 Adding to a set
groceryList.insert("Kiwi")

// Listing 11.4 Looping through a set
for food in groceryList {
    print(food)
}

// Listing 11.5 Removing an element from a set
groceryList.remove("Kiwi")

// Listing 11.6 Has bananas?
groceryList.contains("Bananas")

// Listing 11.7 Combining sets
/// You can pass arrays and sets to union(_:)
let friendsList = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let sharedList = groceryList.union(friendsList)

// Listing 11.8 Intersecting sets
let duplicateItems = groceryList.intersection(friendsList)

// Listing 11.9 Detecting intersections in sets
let disjoint = groceryList.isDisjoint(with: friendsList)

// Listing 11.9.2 Symmetric distance
let symmetricDifference = groceryList.symmetricDifference(friendsList)

// Listing 11.10 Playing games
let players = ["Anna", "Vijay", "Jenka"]
let winners = ["Jenka", "Jenka", "Vijay", "Jenka"]

// Listing 11.11 Initializing sets using arrays
let playerSet = Set(players)
let winnerSet = Set(winners)

// Listing 11.12 Subtracting one set from another
playerSet.subtracting(winnerSet)
