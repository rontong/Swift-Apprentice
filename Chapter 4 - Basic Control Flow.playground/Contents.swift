import Foundation

// Swift Apprentice
// Chapter 4 : Basic Control Flow

// Mini-exercise 1
print("*** Mini-exercise 1")

let myAge = 25
let isTeenager = myAge >= 13 && myAge <= 19

// Mini-exercise 2
print("*** Mini-exercise 2")

let theirAge = 30
let bothTeenagers = (myAge >= 13 && myAge <= 19) && (theirAge >= 13 && theirAge <= 19)

// Mini-exercise 3
print("*** Mini-exercise 3")
let reader = "Ron"
let author = "Matt Galloway"
let authorIsReader = reader == author

// Mini-exercise 4
print("*** Mini-exercise 4")
let readerBeforeAuthor = reader < author

// Mini-exercise 5
print("*** Mini-exercise 5")
print("My age is \(myAge)")

if myAge > 13 && myAge < 19 {
print("Teenager")}
else {
    print("Not a Teenager")
}

// Mini-exercise 6
print("*** Mini-exercise 6")
let answer = myAge > 13 && myAge < 19 ? print("Teenager") : print("Not a teenager")

// Mini-exercise 7
print("*** Mini-exercise 7")

var counter = 0

repeat {
    counter = counter + 1
    print("Counter is \(counter)")
} while counter < 10

// Mini-exercise 8

var newCounter = 0
var roll = 0

repeat {
    roll = Int(arc4random_uniform(6))
    newCounter += 1
    print("After \(newCounter) rolls, roll is \(roll)")
} while roll != 0

// Challenge 3
print("*** Challenge 3")

var currentPosition = (row: 3, column: 4)
var nextPosition = (row: currentPosition.row, column: currentPosition.column)

nextPosition.column += 1

if nextPosition.column > 7 {
    nextPosition.row += 1
    nextPosition.column = 0
    if nextPosition.row > 7 {
        nextPosition.row = 0
    }
}
print("Next position is at row \(nextPosition.row) and column \(nextPosition.column)")

// Challenge 5
print("*** Challenge 5")
let month : String = "april"
let year: Int = 2018
var daysinMonth : Int = 0

if month == "january" || month == "march" || month == "may" || month == "july" || month == "september" || month == "november" {
    daysinMonth = 31 }
else if
    month == "february" && year % 400 == 0 || (month == "february") && (year % 4 == 0) && !(year % 100 == 0) {
        daysinMonth = 29
} else {
    daysinMonth = 30
}

print(daysinMonth)
