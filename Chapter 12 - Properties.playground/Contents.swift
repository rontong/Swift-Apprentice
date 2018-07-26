import Foundation

// Swift Apprentice
// Chapter 11: Properties

// Mini-exercise 1

struct LightBulb {
    static let maxCurrent = 40
    static let currentBreaker = 0
    var circuitbroken = false
    var current = 0 {
        didSet {
            if current > LightBulb.maxCurrent && circuitbroken == false {
                print("Current exceeded maximum, your light bulb has exploded!!!")
                //current = 0
            } else if circuitbroken == true {
                print("Circuit breaker broke the circuit! Current is 0")
                //current = 0
                return
            } else if circuitbroken == false {
                current = newValue
            }
        }
        willSet {
            if newValue > LightBulb.maxCurrent {
                print("Current will be too high, turning off the light bulb")
                circuitbroken = true
                print("Circuit breaker kicking in")
                return
            } else {
                print("Current going to be set to \(newValue)")
            }
        }
    }
}

var light = LightBulb()
let newValue = 50
print("Set the current to \(newValue)")
light.current = newValue

// Challenge A
print("*** Challenge A")

struct IceCream {
    let name = "Ice Cream"
    lazy var ingredients = ["Milk", "Ice", "Flavouring"]
}

// Challenge B
print("*** Challenge B")

struct FuelTank{
    var level: Double = 1.0 {
        willSet {
            if level > 1.0 || level < 0.0 {
                tankLimits = true
                print("Exceeding tank limits")
            }
        }
        
        didSet {
            if level > 1.0 || level < 0.0 {
                tankLimits = true
                print("Exceeding tank limits")
                    if level < 0 {
                        level = 0
                    } else if level > 1 {
                        level = 1
                    }
            }
            if level <= 0.1 && !tankLimits {
                lowFuel = true
                print("Fuel dropping below 10%! Fuel light is now \(lowFuel)")
            } else if level >= 0.1 && !tankLimits {
                lowFuel = false
                print("Fuel exceeding 10%. Fuel light is now \(lowFuel)")
            } else if tankLimits {
                if level < 0 {
                    level = 0
                } else if level > 1 {
                    level = 1
                }
            }
        }
    }
    var lowFuel = false
    var tankLimits = false
}

var camry = FuelTank()
print("Running low on gas!! We've only got 5% left in the tank")
camry.level = 0.05
print("Fuelling up, fuel now at 50%")
camry.level = 0.5
print("Fuel is overflowing! Tank is at 110%")
let newLevel = 1.1
camry.level = newLevel





