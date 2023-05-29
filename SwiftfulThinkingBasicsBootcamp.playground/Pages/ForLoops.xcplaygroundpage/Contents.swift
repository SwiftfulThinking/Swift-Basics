import Foundation

// Learn more:
// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/#For-In-Loops

//for x in 0..<50 {
//    print(x)
//}

let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon"]


var secondArray: [String] = []

for item in myArray {
    print(item)
    
    if item == "Gamma" {
        secondArray.append(item)
    }
}

print(secondArray)

struct LessonModel {
    let title: String
    let isFavorite: Bool
}

let allLessons = [
    LessonModel(title: "Lesson 1", isFavorite: true),
    LessonModel(title: "Lesson 2", isFavorite: false),
    LessonModel(title: "Lesson 3", isFavorite: false),
    LessonModel(title: "Lesson 4", isFavorite: true),
]

var favoriteLessons: [LessonModel] = []

for lesson in allLessons {
    if lesson.isFavorite {
        favoriteLessons.append(lesson)
    }
}

print(favoriteLessons)


for (index, lesson) in allLessons.enumerated() {
    
    if index == 1 {
//        break
        continue
    }
    
    print("index: \(index) || lesson: \(lesson)")
}
