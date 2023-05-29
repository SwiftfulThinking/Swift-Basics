
import Foundation


// Arrays, Sets


var myTitle: String = "Hello, world!"
var myTitle2: String = "Hello, world!!!"

// Tuple

func doSomething(value: (title1: String, title2: String)) {
    
}

doSomething(value: (myTitle, myTitle2))

// Custom data model
struct TitlesModel {
    let title1: String
    let title2: String
}

func doSomething(value: TitlesModel) {
    
}

doSomething(value: TitlesModel(title1: myTitle, title2: myTitle2))


// --------------------------


let apple: String = "Apple"
let orange: String = "Orange"

let fruits1: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange]
let fruits3: Array<String> = [apple, orange]

let myBools: [Bool] = [true, false, true, true, true, false]

func doSomething(value: [String]) {
    
}


var fruitsArray: [String] = ["Apple", "Orange"]


let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

if let firstItem = fruitsArray.first {
    // first item
}


//fruitsArray = fruitsArray + ["Banana", "Mango"]

//fruitsArray.append("Banana")
//fruitsArray.append("Mango")

fruitsArray.append(contentsOf: ["Banana", "Mango"])


// Count     = 1, 2, 3, 4
// Indexes   = 0, 1, 2, 3

fruitsArray[0]

if fruitsArray.indices.contains(4) {
    let item = fruitsArray[4]
}


let firstIndex = fruitsArray.indices.first
let lastIndex = fruitsArray.indices.last


//fruitsArray.append("Watermelon")

//fruitsArray.insert("Watermelon", at: 2)
fruitsArray.insert(contentsOf: ["Watermelon", "Tangerine"], at: 2)

if fruitsArray.indices.contains(1) {
    fruitsArray.remove(at: 1)
}

fruitsArray.removeAll()

print(fruitsArray)


struct ProductModel {
    let title: String
    let price: Int
}

var myProducts: [ProductModel] = [
    ProductModel(title: "Product 1", price: 50),
    ProductModel(title: "Product 2", price: 5),
    ProductModel(title: "Product 3", price: 1),
    ProductModel(title: "Product 4", price: 50),
    ProductModel(title: "Product 5", price: 4),
    ProductModel(title: "Product 6", price: 50),
    ProductModel(title: "Product 7", price: 2),
]


var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]

print(finalFruits)

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]

print(fruitsSet)
