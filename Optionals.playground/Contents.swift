import UIKit

var name = ""

var age: Int?

var test: String? = nil

struct Book {
    var name: String
    var publicationYear: Int?
}

let book1 = Book(name: "Book 1", publicationYear: 1997)
let book2 = Book(name: "Book 2", publicationYear: 1998)
let book3 = Book(name: "Book 3", publicationYear: 1999)

let unpublishedBook = Book(name: "Book 4", publicationYear: 0)

let unpublishedBook2 = Book(name: "Book 5", publicationYear: nil)

// Optionals
var serverResponseCode = 404
var serverResponse2: Int? = 404
var serverResponse3: Int? = nil

var publicationYear: Int? = 2010

if publicationYear != nil {
    /*
     Değeri nil değilse  ! -> force unwrap operator 'nil' olabilecek değerleri zorunlu çıkartır. 'nil' değilmiş gibi kullanmak için sonuna '!' eklenir. O an değer nil ise çöker.
     */
    
    let actualYear = publicationYear!
    print(actualYear)
        
}

// If - Let
if let actualYear = publicationYear {
    // 'publicationYear' nil değilse, onun değerini '!' ile unwrap eder ve 'actualYear' olarak sunar.
    print(actualYear)
}

if let bookYear = book1.publicationYear {
    print("Book1 pub year: \(bookYear)")
}
// If- Let- Else
if let year = book2.publicationYear {
    print("Book2's publication year is \(year)")
}else {
    //book2.publicationYear = nil ise..
}

//----------------------------------------------------------
// Functions & Optionals
let string = "1234a"
let possibleNumber = Int(string)

func printFullName(firstName: String?, middleName: String?, lastName: String) {
    
}

func textFromURL(url: URL) -> String? {
    return nil
}

//----------------------------------------------------------
// Failable Initializers
struct Children {
    var name: String
    var monthsOld: Int
    
    init?(name: String, monthsOld: Int) {
        
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        }else {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

let c1 = Children(name: "Name1", monthsOld: 5)
let c2 = Children(name: "Name2", monthsOld: 34)

if let children1 = c1 {
    // Buraya giremez nil çünkü
}

if let children2 = c2 {
    print(children2.monthsOld)
}

//-----------------------------------------------------
// Optional Chaining

struct Person {
    var age: Int
    var residence: Residence?
}

struct Residence {
    var adress: Address?
}

struct Address {
    var buildingNumber: String
    var street: String
    var apartmentNumber: String?
}

let person = Person(age: 24, residence: nil)

if let residence = person.residence {
    if let address = residence.adress {
        if let apartmentNumber = address.apartmentNumber {
            print("Person \(apartmentNumber) lives in an apartment.")
        }
    }
}

// Optional Chaining
if let apartmentNumber = person.residence?.adress?.apartmentNumber {
    print("Person \(apartmentNumber) lives in an apartment")
}

 
