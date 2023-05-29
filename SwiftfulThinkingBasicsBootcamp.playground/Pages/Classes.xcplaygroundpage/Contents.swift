import Foundation


// Classes are slow!
// Classes are stored in the Heap (memory)
// Objects in the Heap are Reference types
// Reference types point to an object in memory and update the object in memory


// All the data needed for some screen
class ScreenViewModel {
    let title: String
    private(set) var showButton: Bool
    
    // Same init as a Struct, except structs have implicit inits
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // runs as the object is being removed from memory
        // Structs do NOT have deinit!
    }
    
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
}


// Notice that we are using a "let", because:
// the object itself is not changing
// the data inside the object is changing
let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)
//viewModel.showButton = false
let value = viewModel.showButton

viewModel.hideButton()
viewModel.updateShowButton(newValue: false)
