import Foundation

// Listing 14.1 Defining an enumeration
enum TextAlignment {
    case left
    case right
    case center
}

// Listing 14.2 Creating an instance of TextAlignment
var alignment: TextAlignment = TextAlignment.left

// Listing 14.3 Taking advantage of type inference
var alignment2 = TextAlignment.left

// Listing 14.4 Inferring the enum type
var alignment3 = TextAlignment.left
alignment3 = .right

// Listing 14.5 Type inference when comparing values
if alignment3 == .right {}

// Listing 14.6 Switching to switch
switch alignment3 {
    case .left:
        print("left aligned")
    case .right:
        print("right aligned")
    case .center:
        print("center aligned")
}

// Listing 14.7 Making center the default case
switch alignment3 {
    case .left:
        print("left aligned")
    case .right:
        print("right aligned")
    default:
        print("center aligned")
}

// Listing 14.8 Adding a case
enum TextAlignmentTwo {
    case left
    case right
    case center
    case justify
}

// Listing 14.9 Returning to explicit cases
switch alignment3 {
    case .left:
        print("left aligned")
    case .right:
        print("right aligned")
    case .center:
        print("center aligned")
        
}

// Listing 14.10 Including all cases
let alignment4 = TextAlignmentTwo.justify
switch alignment4 {
    case .left:
        print("left aligned")
    case .right:
        print("right aligned")
    case .center:
        print("center aligned")
    case .justify:
        print("justified")
}

// Listing 14.11 Using raw values
// The default behavior for integer raw values is that the first case gets raw value 0, the next case gets raw value 1, and so on
enum TextAlignmentThree: Int {
    case left
    case right
    case center
    case justify
}

// Listing 14.12 Confirming the raw values
var alignment5 = TextAlignmentThree.justify
TextAlignmentThree.left.rawValue

// Listing 14.13 Specifying raw values
enum TextAlignmentFour: Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

// Listing 14.14 Converting raw values to enum types
let rawValue = 20
if let myAlignment = TextAlignmentFour(rawValue: rawValue) {
    print("Success")
} else {
    print("Failed")
}

// Listing 14.15 Creating an enum with strings
enum ProgrammingLanguage: String {
    case swift = "swift"
    case objectiveC = "objective-c"
    case c = "c"
    case cpp = "c++"
    case java = "java"
}
let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

// Listing 14.16 Using default string raw values
enum ProgrammingLanguage2: String {
    case swift
    case objectiveC = "objective-c"
    case cpp = "c++"
    case java
}
let myFavoriteLanguage2 = ProgrammingLanguage2.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

// Listing 14.17 Light bulbs can be on or off
// In Swift, methods can also be associated with enums
enum LightBulb {
    case on
    case off
}

// Listing 14.18 Establishing temperature behaviors
enum LightBulb2 {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
            case .on:
                return ambient + 150.0
            case .off:
                return ambient
        }
    }
}

// Listing 14.19 Turning on the light
var bulb = LightBulb2.on
let ambientTemperature = 77.0
var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

// Listing 14.20 Trying to toggle
enum LightBulb3 {
    case on
    case off
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
            case .on:
                return ambient + 150.0
            case .off:
                return ambient
        }
    }
    func toggle() {
        //        switch self {
        //            case .on:
        //                //self = .off
        //            case .off:
        //                self = .on
        //
        //        }
    }
}
// Listing 14.21 Making toggle() a mutating method

enum LightBulb4 {
    case on
    case off
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
            case .on:
                return ambient + 150.0
            case .off:
                return ambient
        }
    }
    mutating func toggle() {
        switch self {
            case .on:
                self = .off
            case .off:
                self = .on
                
        }
    }
}

// Listing 14.22 Turning off the light
var bulb2 = LightBulb4.on
bulb2.toggle()

// Listing 14.23 Setting up ShapeDimensions
enum ShapeDimensions {
    case square(side: Double)
    case rectangle(width: Double, height: Double)
}

// Listing 14.24 Creating shapes
var squareShape = ShapeDimensions.square(side: 10)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)

// Listing 14.25 Using associated values to compute area
enum ShapeDimensions2 {
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    func area() -> Double {
        switch self {
            case let .square(side: side):
                return side * side
            case let .rectangle(width: w, height: h):
                return w*h
        }
    }
}

// Listing 14.26 Computing areas
var squareShape2 = ShapeDimensions2.square(side: 10.0)
var rectShape2 = ShapeDimensions2.rectangle(width: 5.0, height: 10.0)
print("square's area = \(squareShape2.area())")
print("rectangle's area = \(rectShape2.area())")

// Listing 14.27 Setting up a point
enum ShapeDimensions3 {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    func area() -> Double {
        switch self {
            case .point:
                return 0
            case let .square(side: side):
                return side * side
            case let .rectangle(width: w, height: h):
                return w*h
        }
    }
}

// Listing 14.28 What is the area of a point?
var pointShape = ShapeDimensions3.point
print(pointShape.area())

// For the More Curious: Recursive Enumerations
// Swift sets memory for an enum regarding its max-sized case
// However, in recursive enums it cant decide
// Listing 14.29 Define a recursive enum

//enum FamilyTree {
//    case noKnownParents
//    case oneKnownParent(name: String, ancestors: FamilyTree)
//    case twoKnownParents(fatherName: String, paternalAncestors: FamilyTree, motherName: String, maternalAncestors: FamilyTree)
//}

// Listing 14.30 Use indirect to store it on a pointer
indirect enum FamilyTree2 {
    case noKnownParents
    case oneKnownParent(name: String, ancestors: FamilyTree2)
    case twoKnownParents(fatherName: String, paternalAncestors: FamilyTree2, motherName: String, maternalAncestors: FamilyTree2)
}

// Listing 14.31 Use indirect in only cases
enum FamilyTree3 {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree3)
    indirect case twoKnownParents(fatherName: String, paternalAncestors: FamilyTree3, motherName: String, maternalAncestors: FamilyTree3)
}
