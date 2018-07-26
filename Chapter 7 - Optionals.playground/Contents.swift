// Swift Apprentice
// Chapter 7: Optionals

import Foundation

// Mini-exercise 1

var myFavoriteSong: String? = "Claire de Lune"

// Mini-exercise 2 & 3

let parsedInt = Int("10")
print(parsedInt)

// Mini-exercise 4 & 5

if let myFavoriteSongUnwrapped = myFavoriteSong {
    print(myFavoriteSongUnwrapped)
}

// Challenge B
print("*** Challenge B")

var answer : Int?
func divideIfWhole(_ number: Int,_ divisor: Int) -> Int? {
    
    if number % divisor == 0 {
        answer = number / divisor
        print("Success Dividing! Go forth and conquer!")
        return answer
    } else {
        print("Cannot divide and conquer")
        answer = nil
        return nil
    }
}
func tellMeResult(number: Int, divisor: Int){
    divideIfWhole(number, divisor)
    
    if answer == nil {
        print("Nope, it's not divisible")
    } else {
    if let unwrappedAnswer = answer {
        print("Yep, it divides \(unwrappedAnswer) times")
        }
    }
}
print("Test 1")
tellMeResult(number: 10, divisor: 2)

print("Test 2")
tellMeResult(number: 10, divisor: 3)

print("Test 3")
tellMeResult(number: 534, divisor: 2)

// Challenge C
print("*** Challenge C")

func tellMeResultAgain(number: Int, divisor: Int){
    divideIfWhole(number, divisor)
    let endResult = answer ?? 0
    print("It divides \(endResult) times")
}

tellMeResultAgain(number: 10, divisor: 2)
tellMeResultAgain(number: 21, divisor: 2)

// Challenge D
print("*** Challenge D")
let number: Int??? = 10
print(number!!!)

func safeUnwrap(_ number: Int???){
    if let unwrapped = number {
        if let unwrappedAgain = unwrapped {
            if let finalUnwrapping = unwrappedAgain{
                print(finalUnwrapping)
            }
        }
    }
}

func printNumber(_ number: Int???){
    guard let number = number else {
        print("I can't unwrap this number!")
        return
    }
    print("Success! Number is \(number)")
}

printNumber(10)
