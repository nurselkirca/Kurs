import UIKit

let name = "Nursel"
print(name)

var height = 170
print(height)

height = 175
print(height)


// bir değerin değeri değişmeyecekse let zamanla başka değerler de girilebilirse var
let defaultScore = 100
var playerOneScore = defaultScore
var playerTwoScore = defaultScore

print(playerOneScore)
print(playerTwoScore)

playerOneScore = 200
print(playerOneScore)

// isimlendirme
let sonuc = 15
let toplamaSonucu = 24


struct Insan {
    let firstName : String
    let lastName : String
    
    func sayHello() {
        print("Merhaba")
    }
    
}


let city = "Istanbul"
let city2 = "Ankara"
let sayi = 12
let isiklarAcikMi = true

let insan = Insan(firstName: "Nursel" , lastName: "Kırca")
let insan2 = Insan(firstName: "sdfdf", lastName: "dfsfdd")


// Eğer gireceğimiz verinin türünü belirtmek istersek
let cityName : String = "San Francisco"
let pi : Double = 3.14

// let number = 3 bunu 3 olduğu halde double tanımlamak için
let number : Double = 3

var ad : String
ad = "Nursel"



