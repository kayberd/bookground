import UIKit

let tuple = ("first","second")
let namedTuple = (first:"first", second: "second")

// Listing 5.10 Pattern matching in tuples
let errorCodes = (404, 418)

switch errorCodes {
    case (404, 404):
        print("Both are 404")
    case (404, _):
        print("Only first is 404")
    case (_, 404):
        print("Only second is 404")
    default:
        print("Neither is 404")
        
}

// Listing 5.12 if-case
let age = 31
if case 18...35 = age {
    // print("Age: \(age)")
}

// Listing 5.13 if-cases with multiple conditions
let ageMulti = 32
if case 18...35 = age, age >= 25 {
    // print("Age: \(age)")
}

// Listing 6.1 for-in
var myFirstInt = 0
let lowerBound = 0
let upperBound = 15
/// It is inclusive
for i in lowerBound...upperBound {
    myFirstInt += 1
    // print(myFirstInt)
}

// Listing 6.4 A for-in loop with a where clause
for i in lowerBound...upperBound where i%3 == 0 {
    print(i)
}

// Listing 6.5 A while loop

var i = 0
while i <= upperBound {
    print(i)
    i+=1
}

/// repeat-while (similar to do-while but it executes at least once)
let i_i = 10
repeat {
    print(i_i)
} while i_i < 10


// Listing 7.7 Using a Unicode scalar
let snowman = "\u{2603}"

// Listing 7.12 Counting characters
let str = "Berkay Demiroren"
// print(str.count)

// Listing 7.13 Finding the fifth character
let start = str.startIndex
let end = str.index(start, offsetBy: 4)
let fifthChar = str[end]

// Listing 7.14 Pulling out a range
let range = start...end
let firstFive = str[range]

// Listing 7.15 Using a one-sided range
let oneSidedRange = ...end
let firstFiveOneSided = str[oneSidedRange]

/*
 Substring: Slice of an existing string. Lays on the same memory with parent string and does have the same API with it.
 */

let tale = """
               It was the best of times,
            it was the worst of times.
            """

// Chapter 8: Arrays and Functions

var emptyStringArray = [String]()
var emptyStringArray_2:[String]
var emptyStringArray_3: [String] = []
emptyStringArray.append("")

var bucketList = [String]()
bucketList.append("Go on an Arctic expedition")
bucketList.append("Scuba dive in the Great Blue Hole")
bucketList.append("Find a triple rainbow")
bucketList.count
bucketList.remove(at: 1)
/// Subscripting with range
bucketList[0...1]
/// Mutating an element
bucketList[1] += " with friends"
bucketList.insert("Toboggan across Alaska", at: 1)

/// Combining two arrays
var newItems = ["Bike across America",
                "Make a perfect souffle",
                "Solve Fermat's enigma"
]

bucketList += newItems

/// Arrays support item by item comparison on array comparison
var anotherList = [ "Bike across America", "Make a perfect souffle", "Solve Fermat's enigma"]
newItems == anotherList

// Listing 8.18 An immutable array
let lunches = ["Cheeseburger", "Hamburger"]
