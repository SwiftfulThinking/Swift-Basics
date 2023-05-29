import Foundation

// Rule of thumb:
// We want everything to be as private as possible!
// This makes your code easier to read/debug and is good coding practice!

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavorite: Bool
    
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
    mutating func updateFavoriteStatus2(newValue: Bool) {
        isFavorite = newValue
    }
}

enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
 
    // public
    public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    // private
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
    
    // read is public, set is private
    private(set) var movie3 = MovieModel(title: "Avenger", genre: .action, isFavorite: false)
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus2(newValue: isFavorite)
    }
}


let manager = MovieManager()

let someValue = manager.movie3

//manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
//manager.movie3.updateFavoriteStatus2(newValue: true)
manager.updateMovie3(isFavorite: true)
print(manager.movie3)



// Version 1
// We can GET and SET the value from outside the object.
// "too public"
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)


// Version 2
// We can't GET or SET the value from outside the object.
// "cannot access"
//let movie2 = manager.movie2
//manager.movie2 = manager.movie2.updateFavoriteStatus(newValue: true)

// Version 3
// We can GET the value from outside the object, but we can't SET the value from outside the object.
// "best practice"
let movie3 = manager.movie3
//manager.movie3 = manager.movie3.updateFavoriteStatus(newValue: true)
manager.updateMovie3(isFavorite: true)



// Note: private & public are by far the most common but there are many others
//
// open
// public
// internal
// fileprivate
// private
//
// https://abhimuralidharan.medium.com/swift-3-0-1-access-control-9e71d641a56c
