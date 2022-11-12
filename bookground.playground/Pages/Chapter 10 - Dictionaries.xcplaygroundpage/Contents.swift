import Foundation

// CHAPTER 10 - DICTIONARIES

/// Different ways to declare an instance of `Dictionary`
var dict1: Dictionary<String,Int>
var dict2: [String:Int]

/// Different ways to init a Dictionary
var companyZIPCode: [String:Int] = ["Big Nerd Ranch": 30307]
var sameCompanyZIPCode = ["Big Nerd Ranch": 30307]

// Listing 10.1 Creating a dictionary
var movieRatings = ["Tron": 4, "War Games":5, "Sneakers": 4]

// Listing 10.2 Using count
movieRatings.count

// Listing 10.3 Reading a value from the dictionary
let tronRating = movieRatings["Tron"]

// Listing 10.4 Modifying a value it adds the value if not present
movieRatings["Tron"] = 5

// Listing 10.5 Updating a value
/// if key exists updates and returns the new value
/// else returns nil
movieRatings.updateValue(2, forKey: "Tron")

// Listing 10.6 Adding a value
movieRatings["Hackers"] = 5

// Listing 10.7 Removing a value
/// If successul returns the value, else returns nil
movieRatings.removeValue(forKey: "Sneakers")

// Listing 10.8 Setting the key’s value to nil
movieRatings["Tron"] = nil

// Listing 10.9 Looping through your dictionary
for (key,value) in movieRatings {
    print("Key: \(key) Value: \(value)")
}

// Listing 10.10 Accessing just the keys
for movie in movieRatings.keys {
    print("Movie: \(movie)")
}

// Listing 10.11 Making the dictionary immutable
let immutableDict = ["Tron":1]

// Listing 10.13 Sending keys to an array
let watchedMoviesArray = Array(movieRatings.keys)
