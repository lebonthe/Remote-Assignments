//: [Previous](@previous)
//: # Question No. 1
/*:
closure 是一段用大括號{}框起來，需要執行的程式碼。可以想成是沒有名字的 function，都是一段為了能做某些事情的指令。
closure 經常擔任 function 的參數。當 function 儲存成常數/變數時，該常數/變數即變成 closure。也可以直接用常數/變數宣告 closure。
 因為 closure 有許多形式，以下舉例說明如何執行 closure：
*/
//: ### 1. 儲存 closure 為常數
import Foundation
let printAName = { print("Steve Jobs") }
printAName()

//: ### 2. 儲存 closure 為變數，沒有參數，沒有回傳
var printWords = { print("Swift") }
printWords()
printWords = { print("Xcode") }
printWords()

//: ### 3. 儲存 closure 為變數，有參數，沒有回傳
var printImportedWords = { (word: String) in
    print("印出了 \(word)")
}
printImportedWords("iOS")

//: ### 4. 儲存 closure 為變數，有參數，有回傳
var printSentences = {(sentenceOne: String, sentenceTwo: String) -> String in
    return "\(sentenceOne), \(sentenceTwo)."
}
print(printSentences("Stay hungry","stay foolish"))

//: ### 5. 當做 function 的參數
func doSomething(people name: String, doSomething: () -> Void) {
    print("\(name) is typing.")
}
doSomething(people: "Min", doSomething: {
    printWords()
})

//: ### 6. 當做 function 的參數，使用 trailing closure 寫法呼叫 closure
doSomething(people: "NoOne") {
    printWords()
}

//: ### 7. 在 higher order function 中使用
var appleStore = ["iPhone","Mac","AirPods"]
let sortedAppleStore = appleStore.sorted { $0.count > $1.count }
print(sortedAppleStore)

//: [Next](@next)
