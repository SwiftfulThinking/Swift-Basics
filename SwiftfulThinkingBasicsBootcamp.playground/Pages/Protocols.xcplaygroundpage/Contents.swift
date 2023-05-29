import Foundation

struct EmployeeModel: EmployeeHasAName {
    let title: String
    let name: String
}

protocol EmployeeHasAName {
    let name: String
}
