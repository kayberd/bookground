//: [Previous](@previous)

import Foundation

// CHAPTER 9: OPTIONALS

// Listing 9.1 Declaring an optional instance
var errorCodeString: Optional<String>
errorCodeString = Optional("404")

// Listing 9.2 Using shorthand optional syntax
var errorCodeString_2: String?
errorCodeString_2 = "404"

// Listing 9.3 Logging the value of the optional to the console
print(errorCodeString_2)

// Listing 9.4 Logging the nil value of the optional to the console
var errorCodeString_3: String?
print(errorCodeString_3)

// Listing 9.5 Adding a condition
if errorCodeString_3 != nil {
    let theError = errorCodeString_3!
    print(theError)
}

// Listing 9.6 Optional binding
/// if let temporaryConstant = anOptional {
///     Do something with temporaryConstant
/// } else {
///     There was no value in anOptional - anOptional is nil
/// }
errorCodeString_3 = "404"
if let theError = errorCodeString_3 {
    print(theError)
}

// Listing 9.7 Nesting optional binding
if let theError = errorCodeString_3 {
    if let errorCodeInt = Int(theError) {
        print(errorCodeInt)
    }
}

// Listing 9.8 Unwrapping multiple optionals
/// Better way to nest conditions
if let theError = errorCodeString_3, let errorCodeInt = Int(theError) {
    print(errorCodeInt)
}

// Listing 9.9 Optional binding and additional checks
if let theError = errorCodeString_3, let errorCodeInt = Int(theError), errorCodeInt == 404 {
    print(errorCodeInt)
}

// Listing 9.10 Optional chaining
var errorDescription: String?
if let theError = errorCodeString_3, let errorCodeInt = Int(theError), errorCodeInt == 404 {
    errorDescription = "\(errorCodeInt + 200): resource not found"
}
var upCaseErrorDescription = errorDescription?.uppercased()

// Listing 9.11 Modifying in place
upCaseErrorDescription?.append(" PLEASE TRY AGAIN.")
upCaseErrorDescription

// Listing 9.12 Using optional binding to parse errorDescription
let description: String
if let errorDescription = errorDescription {
    description = errorDescription
} else {
    description = "No error."
}

// Listing 9.13 Using the nil coalescing operator
let descriptionNilCoelsing = errorDescription ?? "No error."
