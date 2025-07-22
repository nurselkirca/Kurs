import UIKit

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello, my name is \(name)")
    }
}

// obje creation
let person1 = Person(name: "Nursel")
print(person1.name)
person1.sayHello()

// Inheritance
// People -> Employee -> Software Eng -> IOS Developer

class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "The vehicle moves at a speed of  \(currentSpeed) km per hour "
    }
    
    func makeNoise() {
        
        
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

// Subclass Creative

// class SomeSubclass: SomeSuperClass {
//
// }

class Bicycle: Vehicle {
    var hasBasket: Bool = false
}

let bicycle1 = Bicycle()
bicycle1.hasBasket = true
bicycle1.currentSpeed = 12
print("Bicycle: \(bicycle1.description)")


class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem1 = Tandem()
tandem1.hasBasket = false
tandem1.currentNumberOfPassengers = 2
tandem1.currentSpeed = 22
print("Tandem: \(tandem1.description)")

// Override Methods and Properties

class Train: Vehicle{
    
    override func makeNoise() {
        print("Choo Choo!")
        
    }
    
}

let train1 = Train()
train1.makeNoise()

class Car: Vehicle {
    var gear = 1
    
    override var description: String {
        return super.description + " and gear \(gear)"
        
    }
}

let car1 = Car()
car1.currentSpeed = 60
car1.gear = 3
print("Car: \(car1.description)")

class Student: Person {
    var favoriteLesson: String
    
    init (name: String, favoriteLesson: String) {
        self.favoriteLesson = favoriteLesson
        super.init(name: name)
    }
}

let student1 = Student(name: "Nursel", favoriteLesson: "Math")
student1.name
student1.favoriteLesson

var student2 = Student(name: "Nur", favoriteLesson: "Math")
var student3 = student2
student3.name = "Test"

print(student2.name) // -> Test a change in one object affects another


