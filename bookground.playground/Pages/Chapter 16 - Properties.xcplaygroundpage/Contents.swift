import Foundation


// 16.1 STORED PROPERTIES

struct Basic {
    let a = "a"
    var b = "b"
}

// 16.1.1 Nested types
struct Parent {
    let a = "a"
    
    struct Child {
        let b = "b"
    }
    
    enum Child2 {
        case a
    }
}

// 16.1.1 Lazy Stored Properties
// Calculation of the property’s value will not occur until the first time it is needed
// Closure wont be called each time we access Lazy.a
struct Lazy {
    lazy var a = {return "a"}()
}

// 16.2 COMPUTED PROPERTIES

// Closure will be called each time we access Computed.a
struct Computed {
    var a: String {
        return a
    }
}

// 16.2.1 A getter and a setter
struct GetterAndSetter {
    var a: String {
        get {
            return "a"
        }
        set {
            print(newValue)
            a = newValue
        }
    }
}

// 16.3 PROPERTY OBSERVERS
// - Property observers watch for and respond to changes in  a given property
// - Property observation is available to any stored property that you define and is also available to any property that you inherit.
// - You can observe changes to a property in one of two ways:
//   * When a property is about to change, via `willSet`
//   * When a property did change, via `didSet`

struct Observers {
    var observable: Int = 32 {
        didSet {
            print(oldValue)
        }
        willSet {
            print(newValue)
        }
    }
}

struct LazyObserver {
    lazy var observable: Int = {
        print("Initted")
        return 12
    }(){
        willSet {print(newValue)}
        didSet {print(oldValue)}
    }
}

var lazyObserver = LazyObserver()
lazyObserver.observable = 3

// 16.4 TYPE PROPERTIES
// Stored type properties have to be given a default value. This requirement stems from the fact that types do not have initializers.
// Main difference between `class` and `static` properties: Class properties can be overridden.


class TypeProperty {
    class var property: String {return "property"} // Can be overriden
}

class StaticProperty {
    static var property: String {return "property"}
}

// 16.5 ACCESS CONTROL
// Access control is organized around two important and related concepts: `modules` and `source files`
//  Swift Access control:
//  open: Visible and subclassable to all files both in the module and imports
//  public: Visible to all files in both module and import. Subclassable by module only
//  internal(default): Visible to only files in the same module. Subclassable by module only.
//  fileprivate: Visible to only inside its source file. Subclassable only inside its source file.
//  private: Both visible and subclassable only within the defining scope.

// 16.5.1 Contolling getter and setter visibility
// You use the syntax internal private(set) to specify that the getter should be internal and the setter should be private. You could use public, internal, or private for either, with one restriction: The setter cannot be more visible than the getter.

class Visibility {
    internal private(set) var visiblePartially = true
}



