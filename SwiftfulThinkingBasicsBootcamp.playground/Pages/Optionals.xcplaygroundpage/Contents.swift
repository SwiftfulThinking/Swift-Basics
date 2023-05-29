import Foundation




// "There is always a value and it is a Boolean"
let myBool: Bool = false

// "We don't know if there is a value, but if there is, it is a Boolean"
var myOtherBool: Bool? = nil

//print(myOtherBool)
//myOtherBool = true
//print(myOtherBool)
//myOtherBool = false
//print(myOtherBool)
//myOtherBool = nil
//print(myOtherBool)

// nil coalescing operator

let newValue: Bool? = myOtherBool

// "The value of myOtherBool (if there is one), otherwise false"
let newValue2: Bool = myOtherBool ?? false

print("New value 2: \(newValue2.description)")

var myString: String? = "Hello, world!"

print(myString ?? "There is no value!")

myString = "New text!"
print(myString ?? "There is no value!")

myString = nil

print(myString ?? "There is no value!")

//let newString = myString ?? "some default value"


// ---------------------------------------------------


var userIsPremium: Bool? = nil

func checkIfUserIsPremium() -> Bool? {
    return userIsPremium
}

func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}


let isPremium = checkIfUserIsPremium2()


// If-let
// When if-let is successful, enter the closure
func checkIfUserIsPremium3() -> Bool {
    
    // If there is a value, let newValue equal that value
    if let newValue = userIsPremium {
        // Here we have access to the non-optional value
        return newValue
    } else {
        return false
    }
}

func checkIfUserIsPremium4() -> Bool {
    if let newValue = userIsPremium {
        return newValue
    }
    
    return false
}

func checkIfUserIsPremium5() -> Bool {
    if let userIsPremium {
        return userIsPremium
    }
    
    return false
}

// Guard
// When a guard is a failure, enter the closure
func checkIfUserIsPremium6() -> Bool {
    
    // Make sure there is a value
    // If there is, let newValue equal that value
    // Else (otherwise) return out of the function
    guard let newValue = userIsPremium else {
        return false
    }
    
    // Here we have access to the non-optional value
    return newValue
}

func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    
    return userIsPremium
}


// ---------------------------------------------------


var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil


func checkIfUserIsSetUp() -> Bool {
    
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
        // userIsNew == Bool AND
        // userDidCompleteOnboarding == Bool AND
        // userFavoriteMovie == String
        return getUserStatus(
            userIsNew: userIsNew,
            userDidCompleteOnboarding: userDidCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie
        )
    } else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
}


func checkIfUserIsSetUp2() -> Bool {
    
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
    
    // userIsNew == Bool AND
    // userDidCompleteOnboarding == Bool AND
    // userFavoriteMovie == String
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    
    return false
}


// layered if-let
func checkIfUserIsSetUp3() -> Bool {
    if let userIsNew {
        // userIsNew == Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboarding == Bool
            
            if let userFavoriteMovie {
                // userFavoriteMovie == String
                return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteOnboarding: userDidCompleteOnboarding,
                    userFavoriteMovie: userFavoriteMovie
                )
            } else {
                // userFavoriteMovie == nil
                return false
            }
            
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
    } else {
        // userIsNew == nil
        return false
    }
}


// layered guard
func checkIfUserIsSetUp4() -> Bool {
    guard let userIsNew else {
        // userIsNew == nil
        return false
    }
    // userIsNew == Bool
    
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return false
    }
    // userDidCompleteOnboarding == Bool

    guard let userFavoriteMovie else {
        // userFavoriteMovie == nil
        return false
    }
    // userFavoriteMovie == String

    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}

func checkIfUserIsSetUp5() -> Bool {
    guard let userIsNew else {
        return false
    }
    
    guard let userDidCompleteOnboarding else {
        return false
    }

    guard let userFavoriteMovie else {
        return false
    }

    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}

// Optional chaining

func getUsername() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    
    
    let username: String? = getUsername()
    
    // "I will get the count if the username is not nil"
    let count: Int? = username?.count
    
    let title: String = getTitle()
    
    // "I will get the count always"
    let count2 = title.count
    
    
    
    // If username has a value, and first character in username has a value, then return the value of isLowercase
    // Optional chaining
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
    
    // "If will get the count because I know 100% that username is not nil"
    // This will crash your application if username is nil!
    let count3: Int = username!.count

}

// safely unwrap an optional
// nil coalscing
// if-let
// guard


// explicitly unwrap optional
// !
