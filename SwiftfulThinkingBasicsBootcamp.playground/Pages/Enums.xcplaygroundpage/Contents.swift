import Foundation

// Enum is the same as Struct except we know all cases at runtime

struct CarModel {
    let brand: CardBrandOption
    let model: String
}

struct CarBrand {
    let title: String
}

// Enums are stored in memory the same way as a Struct but we cannot mutate them
enum CardBrandOption {
    case ford, toyota, honda
    
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        case .honda:
            return "Honda"
//        default:
//            return "Default"
        }
    }
}

//var car1: CarModel = CarModel(brand: "Ford", model: "Fiesta")
//var car2: CarModel = CarModel(brand: "Ford", model: "Focus")
//var car3: CarModel = CarModel(brand: "Toyota", model: "Camry")


//var brand1 = CarBrand(title: "Ford")
//var brand2 = CarBrand(title: "Toyota")
//
//var car1 = CarModel(brand: brand1, model: "Fiesta")
//var car2 = CarModel(brand: brand1, model: "Focus")
//var car3 = CarModel(brand: brand2, model: "Camry")

var car1 = CarModel(brand: .ford, model: "Fiesta")
var car2 = CarModel(brand: .ford, model: "Focus")
var car3 = CarModel(brand: .toyota, model: "Camry")

var fordBrand: CardBrandOption = .ford

print(fordBrand.title)
