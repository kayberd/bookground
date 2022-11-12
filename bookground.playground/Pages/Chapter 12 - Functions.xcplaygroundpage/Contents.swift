import Foundation

// Listing 12.1 Defining a function
func printGreeting() {
    print("Greet")
}
printGreeting()

// Listing 12.2 Using a parameter
func printPersonalGreeting(name: String) {
    print("Hello, \(name). Welcome to your playground.")
}
printPersonalGreeting(name: "Step")

// Listing 12.3 A function for division
func divisionDescriptionFor(numerator: Double, denominator: Double) {
    print("\(numerator) divided by \(denominator) is \(numerator / denominator)")
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0)

// Listing 12.4 Using explicit parameter names
func printPersonalGreeting(to name: String) {
    print("Hello, \(name). Welcome to your playground.")
}
printPersonalGreeting(to: "Step")

// Listing 12.5 Adding a default parameter value
func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") {
    print("\(numerator) divided by \(denominator) is \(numerator / denominator)\(punctuation)")
    
}

// Listing 12.6 An in-out parameter
/// inout parameters can not have default values
/// inout parameters can not be a constant or a literal
var error = "The request failed: "
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if (code == 400) {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)

// Listing 12.7 Returning a string
func divisionDescriptionFor2(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") -> String {
    return "\(numerator) divided by \(denominator) is \(numerator / denominator)\(punctuation)"
}

// Listing 12.8 Nesting function calls
print(divisionDescriptionFor2(numerator: 9.0, denominator: 3.0, withPunctuation: "!"))

// Listing 12.9 Nested functions
func areaOfTriangeWith(base: Double, height: Double) -> Double {
    let rectangle = base * height
    func divide() -> Double {
        return rectangle / 2
    }
    return divide()
}

// Listing 12.10 Sorting evens and odds
func sortedEvenOddNumbers (_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

// Listing 12.11 Calling sortedEvenOddNumbers(_:)
let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
theSortedNumbers.odds
theSortedNumbers.evens

// Listing 12.12 Using an optional return
func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}
let middleName = grabMiddleName(fromFullName: ("Alice", nil, "Ward"))
if let theName = middleName { print(theName) }

// Listing 12.13 Early exits with guard statements
func greetByMiddleName(fromFullName name:(first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print("Hey There!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(fromFullName: ("Alice", nil, "Ward"))

// Listing Bonus Assign functions to each other
let evenOddFunction: ([Int]) -> ([Int], [Int]) = sortedEvenOddNumbers

// Listing Bonus 2 Variadic Parameters
/// You can provide any number of paramaters
func printPersonalGreetings(to names: String...){
    for name in names {
        print("Hello \(name)")
    }
}
printPersonalGreetings(to: "Tessa", "Selah", "Aria", "Elijah")
