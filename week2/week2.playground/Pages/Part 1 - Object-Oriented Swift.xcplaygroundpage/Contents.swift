//: [Previous](@previous)
//: # Part 1: Object-Oriented Swift
//: ## 1.
class Animal {
    var gender: Gender
    func eat() {
        print("I eat everything!")
    }
    init(gender: Gender = .undefined) {
        self.gender = gender
    }
}

enum Gender {
    case male
    case female
    case undefined
}
// example:
let animal = Animal()
animal.eat()

//: ## 2.
class Elephant: Animal {
    override func eat() {
        print("I eat grasses, leaves & fruits!")
    }
}
class Tiger: Animal {
    override func eat() {
        print("I eat fresh meat!")
    }
}
class Horse: Animal {
    override func eat() {
        print("I eat grasses!")
    }
}

// example:
let elephant = Elephant(gender: .female)
elephant.eat()
let tiger = Tiger(gender: .male)
tiger.eat()
let horse = Horse(gender: .undefined)
horse.eat()

//: ## 3.

class Zoo {
    var weeklyHot: Animal

    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger())

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

//: ## 4.
/*: Instance 是使用一種型別(Type）創造出來的值，透過生成 instance，可以使用這個型別的屬性與方法。
    例如第一題中的舉例，animal 就是 Animal 型別的一個 instance。因此 animal 可以使用他的方法 eat()。*/
//: 那該如何建立一個 instance 呢？這時就需要 Initializer。使用 initializer 來創建指定型別的 instance。例如：
let human = Animal() // 在型別 Animal 之後加上括號() 才真正將常數 human 初始化成 Animal 型別的 instance。⽣成 instance 時將使用()內的參數執⾏ init { } 裡的程式，現在他可以使用 Animal 的屬性與方法：
human.gender = .female
human.eat()

//: ## 5.
/*: Struct 跟 Class 都是定義型別的方式，都可以有屬性、方法，有 instance，且 instance 由 initializer 創建。他們有幾個很大的不同：
 - Struct 是 value type，Class 是 reference type。
    - 當賦值給 value type 的常數或變數形成 instance，再把值生成另一個 instance，這兩個 instance 是完全獨立的，只是複製過去的關係。修改其中一個 instance 的屬性不會修改到另一個 instance 的屬性。但若是 reference type，修改其中一個 instance 會修改到另一個 instance，比較像是分享的概念。舉例：*/
 // Structure
struct WeatherForecast {
    var isRaining = true
}
let weatherForecast = WeatherForecast(isRaining: true)
var taipeiWeather = weatherForecast
taipeiWeather.isRaining = false
print("台北目前在下雨嗎？\(taipeiWeather.isRaining)")
print("天氣預報有在降雨嗎？\(weatherForecast.isRaining)")
// 將 weatherForecast 值賦給 taipeiWeather 之後，雖然修改了 taipeiWeather 的 isRaining 屬性，但 weatherForecast 的屬性沒有因此改變。

// Class
class WeatherHere {
    var isRainingHere = true
    init(isRainingHere: Bool) {
        self.isRainingHere = isRainingHere
    }
}
let weatherAtHome = WeatherHere(isRainingHere: true)
let weatherInNeighbor = weatherAtHome
weatherInNeighbor.isRainingHere = false
print("鄰居家正在下雨嗎？\(weatherInNeighbor.isRainingHere)")
print("我家目前在下雨嗎？\(weatherAtHome.isRainingHere)")
// 將 weatherAtHome 賦值給 weatherInNeighbor 之後，修改了 weatherInNeighbor 的 isRainingHere 屬性，weatherAtHome 的 isRainingHere 屬性也一起改變了。

/*:
 - 因為 value type 與 reference type 的關係，Struct 的值稱為 value，Class 的值稱為 object。
 - Struct 一旦被宣告為常數就不可改變其屬性，但 Class 還是可以改變屬性。舉例：*/
// 當用 struct 建立一個常數，要再改變它的屬性就會出現紅色警告（解開註解看）
let hsinChuWeather = WeatherForecast(isRaining: true)
//hsinChuWeather.isRaining = false

// 但用 class 建立一個常數，仍然可以繼續改變它的屬性
let weatherInYourPlace = WeatherHere(isRainingHere: true)
weatherInYourPlace.isRainingHere = false
print("你家在下雨嗎？\(weatherInYourPlace.isRainingHere)")
weatherInYourPlace.isRainingHere = true
print("你家在下雨嗎？\(weatherInYourPlace.isRainingHere)")

//: - Class 具有繼承的能力，如同第二大題。Struct 則沒有。

//: ## 6.
//: 已於第五題第一點回答。

//: ## 7.
//: Instance method 需要先創建一個實例才能使用。Type method 可以直接在型別身上呼叫方法，不需要先創建一個實例，只是在定義方法時，需要在 func 之前加上 static。舉例：
// Instance method
class TreasureBowl {
    var goldenIngotInTreasureBowl = 0
    func increase() {
        goldenIngotInTreasureBowl += 1
    }
    func increaseExponentially() {
        goldenIngotInTreasureBowl *= (goldenIngotInTreasureBowl + 1)
    }
}
let goldenIngot = TreasureBowl()
goldenIngot.increase()
goldenIngot.increase()
goldenIngot.increaseExponentially()
print("聚寶盆中目前有 \(goldenIngot.goldenIngotInTreasureBowl) 個金元寶")

// Type method
class Ingots {
    static var ingots = 0
    static func countIngots(add x: Int, multiply y: Int) {
        print("聚寶盆1中目前有 \(( ingots + x ) * y) 個金元寶")
    }
}
Ingots.countIngots(add: 2, multiply: 3)

//: ## 8. 
//: Self 在 instance method 中代表的是實例，在 type method 中代表的是型別本身。舉例：
// Instance method
class TreasureBowlCount {
    static var totalIngots = 0
    var ingots = 0
    func increase(add x: Int) {
        self.ingots += x // 這是代表實例的 self
        TreasureBowlCount.totalIngots += x
    }
    static func printTotalIngots (){
        print("所有的聚寶盆中目前有 \(self.totalIngots) 個金元寶") // 這是代表型別的 self
    }
}
let treasureBow1 = TreasureBowlCount()
let treasureBow2 = TreasureBowlCount()

treasureBow1.increase(add: 50)
treasureBow2.increase(add: 10)
TreasureBowlCount.printTotalIngots()



//: [Next](@next)
