import Foundation

// Listing 13.1 Starting with an array
let volunteerCounts = [1,3,40,32,2,53,77,13]

// Listing 13.2 Sorting the array
func isAscending(_ i:Int, _ j: Int) -> Bool {
    return i < j
}
let volunteersSorted = volunteerCounts.sorted(by: isAscending)

// Listing 13.3 Refactoring your sorting code
/// {(parameters) -> return type in
///     // Code }
let volunteersSorted_1 = volunteerCounts.sorted(by: {
    (i: Int, j: Int) -> Bool in
    return i < j
})

// Listing 13.4 Taking advantage of type inference
let volunteersSorted_2 = volunteerCounts.sorted(by: {i,j in i<j})

// Listing 13.5 Using shorthand syntax for arguments
let volunteersSorted_3 = volunteerCounts.sorted(by: {$0 < $1} )

// Listing 13.6 Inline closure as the function’s final argument
let volunteersSorted_4 = volunteerCounts.sorted {$0 < $1}
/// If there are multiple trailing closures this only applies to the first
func doAwesomeWork(on input: String, using transformer: () -> Void, then completion: () -> Void){}
doAwesomeWork(on: "My Project") {
    print("Doing work on in `transformer`")
} then: {
    print("Finishing up in `completion`")
}

// Listing 13.7 Formatting numbers as strings
func format(numbers: [Double], using formatter: (Double) -> String) -> [String] {
    var result = [String]()
    return result
}

// Listing 13.8 The real work
func format2(numbers: [Double], using formatter: (Double) -> String) -> [String] {
    var result = [String]()
    for number in numbers {
        let transformed = formatter(number)
        result.append(transformed)
    }
    return result
}

// Listing 13.9 Rounding and converting doubles
let rounder: (Double) -> String = {
    (num: Double) -> String in
    return "\(Int(num.rounded()))"
}

// Listing 13.10 Calling your format function
let volunteerAverages = [10.75, 4.2, 1.5, 12.12, 16.815]
let roundedAveragesAsStrings = format2(numbers: volunteerAverages, using: rounder)

// Listing 13.11 Default closure argument
func format3(numbers: [Double], using formatter: (Double) -> String = {"\($0)"}) -> [String] {
    var result = [String]()
    for number in numbers {
        let transformed = formatter(number)
        result.append(transformed)
    }
    return result
}

// Listing 13.12 Using the default value
let exactAveragesAsStrings = format3(numbers: volunteerAverages)

// Listing 13.13 A scope in which to play
func experimentWithScopes() {
    let rounder: (Double) -> String = {
        (num: Double) -> String in
        return "\(Int(num.rounded()))"
    }
    let volunteerAverages = [10.75, 4.2, 1.5, 12.12, 16.815]
    let roundedAveragesAsStrings = format3(numbers: volunteerAverages, using: rounder)
    let exactAveragesAsStrings = format3(numbers: volunteerAverages)
}
experimentWithScopes()

// Listing 13.14 Capturing enclosing scope
func experimentWithScopes2() {
    var numberOfTransformations = 0
    let rounder: (Double) -> String = { (num: Double) -> String in
        numberOfTransformations += 1
        return "\(Int(num.rounded()))"
    }
    let volunteerAverages = [10.75, 4.2, 1.5, 12.12, 16.815]
    let roundedAveragesAsStrings = format3(numbers: volunteerAverages, using: rounder)
    let exactAveragesAsStrings = format3(numbers: volunteerAverages)
}

// Listing 13.15 Printing a closure-modified value
func experimentWithScopes3() {
    var numberOfTransformations = 0
    let rounder: (Double) -> String = {
        (num: Double) -> String in
        numberOfTransformations += 1
        return "\(Int(num.rounded()))"
    }
    let volunteerAverages = [10.75, 4.2, 1.5, 12.12, 16.815]
    let roundedAveragesAsStrings = format3(numbers: volunteerAverages, using: rounder)
    let exactAveragesAsStrings = format3(numbers: volunteerAverages)
    print(numberOfTransformations)
}
experimentWithScopes3()

// Listing 13.17 Transforming values with map(_:)
let roundedAverages = volunteerAverages.map { (avg: Double) -> Int in
    return Int(avg.rounded())
}

let roundedAverages2 = volunteerAverages.map {Int($0.rounded())}

// Listing 13.18 Selecting desirable values with filter(_:)
let passingAverages = roundedAverages.filter { (avg: Int) -> Bool in
    return avg >= 10
}

// Listing 13.19 Reducing
let estimatedParticipation = passingAverages.reduce(5) { (estimationSoFar: Int, currentOrgAverage: Int) -> Int in
    return estimationSoFar + currentOrgAverage
}
let estimatedParticipation2 = passingAverages.reduce(0){$0 + $1}
