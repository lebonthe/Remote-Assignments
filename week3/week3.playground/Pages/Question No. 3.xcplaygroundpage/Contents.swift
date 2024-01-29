//: [Previous](@previous)
//: # Question No. 3

import Foundation

//: 方法一
func printTriangle(layer: Int) {
    for i in 1...layer {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print("")
    }
}
printTriangle(layer: 5)

//: 方法二
func printTriangle2(layer: Int) {
    var i = 0
    while i < layer {
        for _ in 0...i {
            print("*", terminator: "")
        }
        print("")
        i += 1
    }
}
printTriangle2(layer: 5)



//: [Next](@next)
