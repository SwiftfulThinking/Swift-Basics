import Foundation


// Structs are fast!
// Structs are stored in the Stack (memory)
// Objects in the Stack are Value types
// Value types are copied & mutated


struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    // Structs have an implicit init
//    init(title: String, dateCreated: Date) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
//    init(title: String, dateCreated: Date = .now) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
    init(title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }
}


let myObject: String = "Hello, world!"

//let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: .now)
//let myQuiz: Quiz = Quiz(title: "Quiz 1")
//let myQuiz = Quiz(title: "Quiz 1", isPremium: nil)
let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: nil, isPremium: false)

print(myQuiz.title)


// -----------------------------------------------------


// "Immutable struct" = all "let" constants = NOT mutable = "cannot mutate it!"
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Nick", isPremium: false)

func markUserAsPremium() {
    print(user1)
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

//markUserAsPremium()

// -----------------------------------------------------

// "mutable struct"
struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Nick", isPremium: false)

func markUserAsPremium2() {
    print(user2)
    
    // "mutate" the struct
    user2.isPremium = true
    
    print(user2)
}
markUserAsPremium2()

// -----------------------------------------------------

// "immutable struct"
struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium(newValue: Bool) -> UserModel3 {
        UserModel3(name: name, isPremium: newValue)
    }
}

var user3: UserModel3 = UserModel3(name: "Nick", isPremium: false)
user3 = user3.markUserAsPremium(newValue: true)

// -----------------------------------------------------

// "mutable struct"

struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func markUserAsPremium() {
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}

var user4 = UserModel4(name: "Nick", isPremium: false)
user4.markUserAsPremium()
user4.updateIsPremium(newValue: true)


struct User5 {
    let name: String
    let isPremium: Bool
    let isNew: Bool
    //
    //
    //
    //
}
