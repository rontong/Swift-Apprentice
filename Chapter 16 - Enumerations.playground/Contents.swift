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
        return Month.december.rawValue - month.rawValue
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

enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}

let coin = Coin.quarter
coin.rawValue

var coinPurse = [Coin]()
coinPurse.append(Coin.dime)
coinPurse.append(Coin.nickel)
coinPurse.append(Coin.quarter)
coinPurse.append(Coin.quarter)
coinPurse.append(Coin.penny)

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
