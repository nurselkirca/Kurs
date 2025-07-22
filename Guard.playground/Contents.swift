import UIKit

func divide (_ number: Double, by divisor: Double) {
    guard divisor != 0 else { return }
    let result = number / divisor
        
    print(result)
}
// Guard with optionals
struct Book {
    var title: String
    var price: Double
    var pages: Int
}

func processBook(_ title: String?, price: Double?, pages: Int?) {
    if let title = title, let price = price, let pages = pages {
        let book = Book(title: title, price: price, pages: pages)
    }
}

// { continues without needing to use
func processBook(title: String?, price: Double?, pages: Int?) {
    guard let title = title, let price = price, let pages = pages else { return }
    let book = Book(title: title, price: price, pages: pages)  // -> { continues without needing to use
    print(Book(title: <#String#>, price: <#Double#>, pages: <#Int#>))
                    
}
