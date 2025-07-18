func displayPi() {
    print("3.14")
}

func sayMyName() {
    print("Hello, I am Nursel")
}

displayPi()
sayMyName()

// ----------------------------
// Irreversible function
func triple(value: Int) {
    let result = value * 3
    print(result)
}

// Calling function
triple (value: 4815)

// multiple - parameter, ırreversible functions
func multiply(firstNumber: Int, secondNumber: Int) {
    let result = firstNumber * secondNumber
    print(result)
}
func introduceYourself(firstName: String, lastName: String, height: Double) {
    let fullName = firstName + " " +  lastName
    let text = "Hello, I am " + fullName + " and my height is" + String(height)
    
    print(text)
}

multiply(firstNumber: 12, secondNumber: 4)
introduceYourself(firstName: "Nursel", lastName: "Kırca", height: 173)

// ------------------------------------------
// Argument Labels
func sayHello(firstName: String) {
    let text = "Hello," + firstName
    print(text)
}
sayHello(firstName: "Nursel")
// sayHello(to: "Nursel"
func sayHello (to firstName: String) {
    let text = "Hello, " + firstName
    print(text)
}

func sayHello(to person: String, and anotherPerson: String) {
    let text = "Hello, " + person + " and " + anotherPerson
    print(text)
}

sayHello(to: "Nursel")
sayHello(to: "Nursel", and: "Engin")

print("Hello World")

func sayHello(_ person: String, _ anotherPerson: String) {
    
}

sayHello("Name 1", "Name 2")
// ------------------------------------
// default parameters value

func display(teamName: String, score: Int = 0) {
    let text = teamName + ": " + String(score)
    print(text)
}

display(teamName: "Galatasaray", score: 15)
display(teamName: "Fenerbahçe")

// function with parameters and return
func multiplyAndReturn(firstNumber: Int, secondNumber: Int) -> Int {  // Changed name to avoid conflict
    let result = firstNumber * secondNumber
    return result
}

let result = 4 * 5
let result2 = multiply(firstNumber: 4, secondNumber: 5) // 20




