// Swift Apprentice
// Chapter 13: Methods

// Mini-exercise 1, Challenge 2

let months = ["January", "February", "March",
              "April", "May", "June",
              "July", "August", "September",
              "October", "November", "December"]

struct SimpleDate {
    
    var month: String
    var day: Int

// Complex initializer
    init(month: String, day: Int) {
        self.month = month
        self.day = day
    }
    
// Simple Initializer
//    init () {
//        month = "January"
//        day = 1
//    }
    
    var monthsUntilWinterBreak : Int {
        get {
        return months.index(of: "December")! - months.index(of: self.month)!
        }
    }
    
    mutating func advance() {
        if month == "December" {
        if day == 31 {
            day = 1
            month = "January"
        } else {
        day += 1
        }
        }
    }
}

let date = SimpleDate(month: "February", day: 14)
let month = date.month
let monthsLeft = date.monthsUntilWinterBreak

var current = SimpleDate(month: "December", day: 31)
current.advance()
let currentMonth = current.month
let currentDay = current.day

// Mini-exercise 2, Challenge 3

struct Math {
    
    static func factorial(of number: Int) -> Int {
        
        return (1...number).reduce(1, *)
    }
    
    static func triangle(of number: Int) -> Int {
        return (1...number).reduce(1, +)
    }
    
    static func isEven(of number: Int) -> Bool {
        if number % 2 == 0 {
            return true
        } else {
            return false
        }
    }
    
    static func isOdd(of number: Int) -> Bool {
        if number % 2 == 1 {
            return false
        } else {
            return true
        }
    }
}

let factorial = Math.factorial(of: 6)
let triangularNumber = Math.triangle(of: 5)

Math.isEven(of: 6)
Math.isEven(of: 5)
Math.isOdd(of: 6)
Math.isOdd(of: 5)


extension Math {
    static func primeFactors(of value: Int) -> [Int] {
        
        var remainingValue = value
        
        var testFactor = 2
        var primes: [Int] = []
        
        while testFactor * testFactor <= remainingValue {
            if remainingValue % testFactor == 0 {
                primes.append(testFactor)
                remainingValue /= testFactor
            }
            else {
                testFactor += 1
            }
        }
        if remainingValue > 1 {
            primes.append(remainingValue)
        }
        return primes
    }
}

// Challenge 1

struct Circle {
    var radius = 0.0
    var area: Double {
        get {
        return .pi * radius * radius
    }
        set(newArea) {
        area = newArea
        }
    }
    
    init (radius: Double) {
        self.radius = radius
    }
    
    func grow(byFactor: Double) -> Double {
        let newArea = area * byFactor
        return newArea
    }
}

let circle = Circle(radius: 2)
circle.radius
circle.area
circle.grow(byFactor: 3)

// Challenge 4

extension Int {
    var isEven: Bool {
        if self % 2 == 0 {
            return true
        } else {
            return false
        }
    }
    
    var isOdd: Bool {
        if self % 2 == 0 {
            return false
        } else {
            return true
        }
    }
    
    func primeFactors () {
        
    }
}

let number : Int = 3
number.isOdd

// Challenge 5


