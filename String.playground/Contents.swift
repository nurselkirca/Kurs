import UIKit

let hello = "Hello"
var greeting = "Hello"

let helloWorld = "\"Hello world\" is used a lot in the coding world."
print(helloWorld)

var myString = "" // empty string

// Determining whether strings are empty
if myString.isEmpty {
    print("String value is empty")
}

let a = "a"
let b: Character = "b" // Character

let string1 = "Hello"
let string2 = ", World!"

let finalString = string1 + string2

var welcomeText = ""

welcomeText += "Hello"
welcomeText += "I am Nursel"

print(welcomeText)

let name = "Nursel"
let age = 24

print("Hello, I am \(name) ve \(age) years old.")

let number1 = 20
let number2 = 4

print("\(number1) x \(number2) = \(number1 * number2)")

//------------------------------------------------------
// String equality

let month = "Ocak"
let anotherMonth = "Ocak"
let lowercaseMonth = "ocak"

if month == anotherMonth {
    print("Months are equal")
}

if month != lowercaseMonth {
    print("Months ara not equals")
}

if name.lowercased() == "NURsel".lowercased() {
    print("Both name are the same")
}

let text = "Hello, World!"
// Prefix && Suffix
print(text.hasPrefix("Hello")) // Prefix -> beginning of sentence
print(text.hasSuffix("World")) // Suffix -> end of sentence

if text.contains("my name is ") {
    print("Person is introduced herself")
}

// String -> series of character
let password = "123456"
let count = password.count

if password.count < 8 {
    print("Password is too short")
}







