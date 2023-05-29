import Foundation

//var likeCount: Double = 5
//var commentCount: Double = 0
//var viewCount: Double = 100

//likeCount = 5 + 1

// Addition
//likeCount = likeCount + 1
//likeCount += 1

// Subtraction
//likeCount = likeCount - 1
//likeCount -= 1

// Multiplication
//likeCount = likeCount * 1.5
//likeCount *= 1.5

// Division
//likeCount = likeCount / 2
//likeCount /= 2

// Order of operations does matter!
// PEMDAS
//likeCount = likeCount - 1 * 1.5
//likeCount = (likeCount - 1) * 1.5


var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

likeCount -= 1

print(likeCount)

if likeCount == 5 {
    print("Post has 5 likes.")
} else {
    print("Post does NOT have 5 likes.")
}

if likeCount != 5 {
    print("Post does NOT have 5 likes.")
}

if likeCount > 5 {
    print("Post has greater than 5 likes.")
}

if likeCount >= 5 {
    print("Post has greater than or equal to 5 likes.")
}

if likeCount < 5 {
    print("Post has less than 5 likes.")
}

if likeCount <= 5 {
    print("Post has less than or equal to 5 likes.")
}

if (likeCount > 3) && (commentCount > 0) {
    print("Post has greater than 3 likes AND greater than 0 comments.")
} else {
   print("Post has 3 or less likes OR post has 0 or less comments.")
}

if likeCount > 3 || commentCount > 0 {
    print("Post has greater than 3 likes OR greater than 0 comments.")
} else {
    print("Post has 3 or less likes AND post has 0 or less comments.")
}

var userIsPremium: Bool = true
var userIsNew: Bool = false

if userIsPremium && userIsNew {
    
}


if (likeCount > 3 && commentCount > 0) || (viewCount > 50) {
    print("EXECUTE")
}

if (likeCount > 100) && (commentCount > 0 || viewCount > 50) {
    print("EXECUTE")
}

if likeCount > 5 || userIsPremium {
    
}


if likeCount > 5 {
    print("Like count > 5")
} else if likeCount > 2 {
    print("Like count > 2")
} else if userIsPremium {
    print("user is premium")
} else {
    print("else statement")
}
