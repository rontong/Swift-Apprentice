// Swift Apprentice
// Chapter 16 - Enumerations

// Mini-exercises

enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
    
    var semester : String {
        switch self {
        case .august, . september, .october, .november, .december:
        return "Autumn"
        case .january, .february, .march, .april, .may:
        return "Spring"
        case .june, .july:
        return "Summer"
        default:
            return "Not in School Semester"
        }
    }
    
    var monthsUntilWinterBreak : Int {
        return Month.december.rawValue - self.rawValue
    }
}

func semester(for month: Month)-> String {
    switch month {
    case .august, . september, .october, .november, .december:
        return "Autumn"
    case .january, .february, .march, .april, .may:
        return "Spring"
    case .june, .july:
        return "Summer"
    }
}

var month = Month.april
semester(for: month)
month.semester

func monthsUntilWinterBreak(from month: Month) -> Int {
    return Month.december.rawValue - month.rawValue
}

let fifthMonth = Month(rawValue: 5)
let monthsLeft = fifthMonth?.monthsUntilWinterBreak

var balance = 100

enum WithdrawalResult {
    case success(newBalance: Int)
    case error(message: String)
}

func withdraw(amount: Int) -> WithdrawalResult {
    if amount <= balance {
        balance -= amount
        return .success(newBalance: amount)
    } else {
        return .error(message: "Insufficient Funds")
    }
}

let result = withdraw(amount: 99)

switch result {
case .success(let newBalance):
    print("Your new balance is \(newBalance)")
case .error(let message):
    print(message)
}

enum Light {
    case on
    case off
}

let light = Light.off
light

// Challenge A
print("*** Challenge A")

enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}

let coin = Coin.quarter
coin.rawValue

var coinPurse : [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]

func countCoins(purse: [Coin]) -> Int {
    
    let cents = purse.reduce(0) {
        $0 + $1.rawValue
    }
    return cents
}

countCoins(purse: coinPurse)

// Challenge B
print("*** Challenge B")

enum Month2: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
    
    var semester : String {
        switch self {
        case .august, . september, .october, .november, .december:
            return "Autumn"
        case .january, .february, .march, .april, .may:
            return "Spring"
        case .june, .july:
            return "Summer"
        default:
            return "Not in School Semester"
        }
    }
    
    var monthsUntilWinterBreak : Int {
        return Month.december.rawValue - self.rawValue
    }
    
    var monthsUntilSummerBreak : Int {
        if Month2.june.rawValue > self.rawValue {
            return Month2.june.rawValue - self.rawValue
        } else {
            return self.monthsUntilWinterBreak + Month2.june.rawValue
        }
    }
}

let january = Month2.january
january.monthsUntilSummerBreak

let september = Month2.september
september.monthsUntilWinterBreak
september.monthsUntilSummerBreak

// Challenge C
print("*** Challenge C")

var xLocation = 0
var yLocation = 0

enum Direction {
    case north
    case south
    case east
    case west
    
    func coordinates(for direction: Direction) {
        switch self {
        case .north: yLocation += 1
        case .south: yLocation -= 1
        case .east: xLocation += 1
        case .west: xLocation -= 1
        }
    }
}

let movements : [Direction] = [.north, .north, .west, .south, .west, .south, .south, .east, .east, .south, .east]

func calculateLocation(movements: [Direction]) -> (x: Int, y: Int) {
  
    for movement in movements {
        movement.coordinates(for: movement)
        print("Moving \(movement), x is now \(xLocation), y is now \(yLocation)")
    }
    
    let location = (x: xLocation, y: yLocation)

    return location
}

calculateLocation(movements: movements)
