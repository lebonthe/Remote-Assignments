//: [Previous](@previous)
//: # Part 4: Error Handling in Swift

enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetNumber = 10

    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
}
        print("Guess the right number: \(targetNumber)")
    }
}

func guessNumber(number: Int) {
    let numberGuessed = GuessNumberGame()
    do {
        try numberGuessed.guess(number: number)
    }
    catch {
        print("Guess the wrong number.")
    }
}
guessNumber(number: 20)




//: [Next](@next)
