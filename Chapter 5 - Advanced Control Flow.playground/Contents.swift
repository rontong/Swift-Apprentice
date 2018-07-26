import Foundation

// Swift Apprentice
// Chapter 5 : Advanced Control Flow

// Mini-exercise 1
print("*** Mini-exercise 1")

var range = 1...10

for square in range {
    print(square * square)
}

// Mini-exercise 2
print("*** Mini-exercise 2")

for squareRoot in range {
    print(sqrt(Double(squareRoot)))
}

// Mini-exercise 3
print("*** Mini-exercise 3")

var sum = 0
for row in 0..<8 where row % 2 != 0 {
    for column in 0..<8 {
        sum += row * column
    }
}
print(sum)

// Mini-exercise 4
print("*** Mini-exercise 4")
let age = 25

switch age {
    case 0...2: print("Infant")
    case 3...12: print("Child")
    case 13...19: print("Teenager")
    case 20...39: print("Adult")
    case 40...60: print("Middle aged")
    default: print("Elderly")
}

// Mini-exercise 5
print("*** Mini-exercise 5")

let myDetails = (name: "Ron", age: 25)

switch myDetails {
    case (let name, 0...2): print("\(name) is an Infant")
    case (let name, 3...12): print("\(name) is a Child")
    case (let name, 13...19): print("\(name) is a Teenager")
    case (let name, 20...39): print("\(name) is an Adult")
    case (let name, 40...60): print("\(name) is Middle aged")
    default: print("Elderly")
}

// Challenge 1
print("*** Challenge 1")

var anotherSum = 0
for i in 0...5 {
    anotherSum += i
}
print(anotherSum)
// Answer: 6 iterations, sum value 15

// Challenge 2
print("*** Challenge 2")

var aLotOfAs = ""
while aLotOfAs.count < 10 {
    aLotOfAs += "a"
}
aLotOfAs.count
// Answer: 10

// Challenge 3
print("*** Challenge 3")

let coordinates = (3, 2, 5)

switch coordinates {
case let (x, y, z) where x == y && y == z: print("x = y = z")
case (_, _, 0): print ("On the x/y plane")
case (_, 0, _): print("On the x/z plane")
case (0, _, _): print("On the y/z plane")
default: print("Nothing special")
}

// Answers: on the x/y plane, x = y = z, on the x/z plane, nothing special, on the y/z plane

// Challenge 5
print("*** Challenge 5")
var countdownNumber = 10

while countdownNumber <= 10 && countdownNumber > 0 {
    countdownNumber = countdownNumber - 1
    print(countdownNumber)
}

// Challenge 6
print("*** Challenge 6")
var countupNumber = 0.0

while countupNumber < 1 && countupNumber >= 0 {
    countupNumber += 0.1
    print(countupNumber)
}

