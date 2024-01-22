//: [Previous](@previous)
//: # Part 2: Enumerations and Optionals in Swift
//: ## 1.

enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    var price: Double {
        switch self {
        case .oil92:
            return 28.9
        case .oil95:
            return 30.4
        case .oil98:
            return 32.4
        case .diesel:
            return 27.7
        }
    }
    
    func getPrice() -> Double {
        switch self {
        case .oil92:
            return 28.9
        case .oil95:
            return 30.4
        case .oil98:
            return 32.4
        case .diesel:
            return 27.7
        }
    }
}
var gasoline = Gasoline.oil92
var price = gasoline.price
print("\(gasoline.rawValue) 汽油每公升的價格為 \(price) 元。")

gasoline = Gasoline.oil95
price = gasoline.getPrice()
print("\(gasoline.rawValue) 汽油每公升的價格為 \(price) 元。")

//: associated value 是讓 enumeration 儲存相關連資料的方式，雖然不能與 raw value 同時使用，但每個 case 一次可以儲存不只一個 associated value，型別也不用相同。舉例：
enum Coffee {
    case toffeeNut(size: String, ice: Bool, sauce: Int)
    case latte(size: String, ice: Bool, suger: Bool, milk: String)
    case cocoa(size: String, ice: Bool)
}
let coffeeToday = Coffee.latte(size: "Venti", ice: false, suger: false, milk: "Oat Milk")

//: ## 2.

class Pet {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class People {
    let name: String
    var pet: Pet?
    init(name: String, pet: Pet? = nil) {
        self.name = name
        self.pet = pet
    }
}

func printNameOfPet(from who: People) {
    guard let pet = who.pet else { return }
    print("\(who.name)'s pet's name is \(pet.name).")
}

let snoopy = Pet(name: "Snoopy")
let charlie = People(name: "Charlie", pet: snoopy)

printNameOfPet(from: charlie)

let teddy = Pet(name: "Teddy")
let mark = People(name: "Mark", pet: teddy)

if let pet = mark.pet {
    print("Mark's pet's name is \(pet.name).")
}


//: [Next](@next)
