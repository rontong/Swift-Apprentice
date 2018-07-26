// Swift Apprentice
// Chapter 6 : Functions

import UIKit

// Mini-exercise 1 & 2
print("*** Mini-exercises 1 & 2")

var firstName : String = ""
var lastName: String = ""

func printFullName(_ firstName: String, _ lastName: String) {
    print("\(firstName)" + " " + "\(lastName)")
}

printFullName("Ron", "Tong")

// Mini-exercise 3
print("*** Mini-exercise 3")

func calculateFullName(firstName: String, lastName: String) -> String {
    let fullName = String("\(firstName)" + " " + "\(lastName)")
    print(fullName)
    return fullName
}

calculateFullName(firstName: "My", lastName: "Name")

// Mini-exercise 4
print("*** Mini-exercise 4")

var fullNameTupule : (fullName: String, nameLength: Int) = ("", 0)

func calculateFullNameTupule(firstName: String, lastName: String) -> (fullName: String, nameLength: Int){
    let fullName = String("\(firstName)" + " " + "\(lastName)")
    let nameLength = fullName.count
    fullNameTupule = (fullName, nameLength)
    return fullNameTupule
}
calculateFullNameTupule(firstName: "MyOther", lastName: "Name")


// Challenge A
print("*** Challenge A")
for index in stride(from: 10, to: 22, by: 4){
    print(index)
}

for index in stride(from: 10, through: 9, by: -0.1){
    print(index)
}

// Challenge B
print("*** Challenge B")
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    if number % divisor == 0 {
        return true
    } else {
        return false}
    }

isNumberDivisible(3, by: 2)

func isPrime(_ number: Int) -> Bool{
    if number < 0 {
        print("\(number) is not a prime as it is less than zero")
        return false
    }
    for divisor in 2..<number {
        if isNumberDivisible(number, by: divisor){
            print("\(number) is not a Prime as it has divisors")
            return false
        }
    }
    print("\(number) is a Prime as it has no divisors")
    return true
}

isPrime(6)
isPrime(13)
isPrime(8893)

// Challenge C
print("*** Challenge C")

func fibonacciValue(_ fibonacciNumber: Int) -> Int {
    if fibonacciNumber < 0 {
        return 0
    } else if fibonacciNumber == 1 || fibonacciNumber == 2 {
        return 1
    } else {
        let sum = fibonacciValue(fibonacciNumber - 1) + fibonacciValue(fibonacciNumber - 2)
        print("... Finding the sum of previous two fibonacci numbers")
        print("Fibonacci Value for \(fibonacciNumber) is \(sum)")
        return sum
    }
}

fibonacciValue(1)
fibonacciValue(2)
fibonacciValue(3)
fibonacciValue(4)
fibonacciValue(5)
fibonacciValue(10)






