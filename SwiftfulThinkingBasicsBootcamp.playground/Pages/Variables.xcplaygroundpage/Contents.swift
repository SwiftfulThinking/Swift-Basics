import Foundation


// Constant
let someConstant: Bool = true

// Variable
var someVariable: Bool = true

// Cannot assign to value: 'someConstant' is a 'let' constant
// someConstant = false

someVariable = false

var myNumber: Double = 1.1234
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 234870234
print(myNumber)
myNumber = 1
print(myNumber)
myNumber = 458


// if statements

var userIsPremium: Bool = false

if userIsPremium == true {
    print("1 - user is premium")
} else {
    print("1.1 - user is NOT premium")
}

if userIsPremium {
    print("2 - user is premium")
}

if userIsPremium == false {
    print("3 - user is NOT premium")
}

if !userIsPremium {
    print("4 - user is NOT premium")
}
