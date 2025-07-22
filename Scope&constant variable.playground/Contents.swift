import UIKit

var name = "Nursel"

var age = 24

func printMyAge(name: String = "Nursel", age: Int = 24) {
    print("My age is \(age)")
}

print(age)
printMyAge()

func printBottleCount() {
    
    let bottleCount: Int = 120
    print(bottleCount)
}

printBottleCount()

func PrintTenName() {
    var name = "Nursel"
    
    for index in 1...10 {
        print("\(index): \(name)")
    }
    
    //print(index) -> for
    print(name)
}

PrintTenName()

//----------------------------------
// Variable shadowing

func printComplexScope() {
    let points = 100
    print(points)
    
    for index in 1...3 {
        let points = 200 // -> variable shadowing
        print("Loop \(index): \(points + index)")
        
    }
    
    print(points)
}

printComplexScope()

// Prefer if-let and guard-let shadowing.

var name1: String? = "Nursel"

if let name1 = name1 {
    print(name1)
}

// -----------------------------------
// Shadowing and Initializers

struct Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let emir = Person(name: "Emirhan", age:24)

print(emir.name)
print(emir.age)
