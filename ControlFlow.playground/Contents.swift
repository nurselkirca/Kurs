import UIKit

let boilingPoint = 100

if boilingPoint >= 100 {
    // if  it is true working
}

if boilingPoint >= 100 {
    print("water is boiling")
}else {
    print("Water is not yet boiling")
}

let areTheLightsOn = true
// minute type
let openTime = 12


if areTheLightsOn && openTime >= 5 {
    print(" You should turn of the lights.")
}else {
    print("The lights have been on for a while.")
}

// If-ElseIf
var raceFinishOrder = 2

if raceFinishOrder == 1 {
    print("Congratulations, you won a gold medal")
}else if raceFinishOrder == 2 {
    print("You came second and got a silver medal")
}else {
    print("You lost!")
}

// Boolean values
let number = 1000
let isSmallerNum = number > 10

let speedLimit = 120
let mySpeed = 160
let isSpeedLimitReached = mySpeed > speedLimit

var isItSnowing = false

if isItSnowing {
    
}else {
    print("Is not snowing")
}

if !isItSnowing{
    print("Is not snowing")
}

// range definition
let tempature = 23
if tempature >= 20 && tempature <= 25 {
    print("Tempature is high")
}else if tempature < 20 {
    print("Tempature is cold")
}else {
    print("Tempature is too high")
}

var isPhoneCharging = false
var isBatteryPower = true

/*
  || true, true -> true
  || true, false -> true
  || false, true -> true
  || fasle, false -> false
*/

if isPhoneCharging || isBatteryPower {
    print("You can use phone")
}else {
    print("You can not use phone")
}


// ---------------------------------------
// Switch structures


let numberOfWheel = 2

switch numberOfWheel {
case 1:
    print("One wheel")
case 2:
    print("Two wheel")
case 3:
    print("Three wheel")
default:
    print("A lot of wheel")
}

let character = "b"

switch character {
case "a", "e", "ö", "ü":
    print("vowel")
default:
    print("consonant")
}

let distance = 120

switch distance {
case 0...10:
    print("Walking distance")
case 11...30:
    print("Biycle distance")
case 31...100:
    print("Car distance")
default:
    break
}

// Ternary operator
var largest : Int

let a = 15
let b = 5

if a > b {
    largest = a
}else {
    largest = b
}
// if written in one line
largest = a > b ? a : b






