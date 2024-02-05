//: [Previous](@previous)
//: # Part 3: Protocol in Swift
//: ## 1 - 6
protocol PoliceMan {
    func arrestCriminals()
}

struct Person: PoliceMan {
    func arrestCriminals() {
        print("You were arrested!")
    }
    
    var name: String
    var toolMan: ToolMan
}

protocol ToolMan {
    func fixComputer()
}

struct Engineer: ToolMan {
    func fixComputer() {
        print("It's my fate.")
    }
}

let steven = Person(name: "Steven", toolMan: Engineer())






//: [Next](@next)
