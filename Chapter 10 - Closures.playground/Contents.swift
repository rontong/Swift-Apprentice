import Foundation

// Swift Apprentice
// Chapter 10: Closures

// Mini-exercise 1

let names = ["Ronald", "Alexandra", "Matthew", "Iva", "Joe", "Mike"]

let concatenation = names.reduce("") {
    return $0 + $1
}

// Mini-exercise 2
let filter = { (_ input: [String]) in
    input.filter {
        return $0.count < 4
    }
}

func concatenate(_ input: [String]) -> [String] {
    let itemToConcatenate = filter(input)
    itemToConcatenate.reduce(""){
        return $0 + $1
    }
    return itemToConcatenate
}

concatenate(names)

// Mini-exercise 3

let namesAndAges = ["Ron": 25, "Alex": 23, "Baby": 3, "Kiddo": 12, "Tween": 15]

let filterAdults = namesAndAges.filter {
    return $0.value < 18
}

let filterPeople = { (_ input: [String: Int]) in
    input.filter {
        return $0.value < 18
    }
}

filterPeople(namesAndAges)

// Mini-exercise 4

func mapNames(_ input: [String:Int]) -> [String] {
    let filteredPeople = filterPeople(namesAndAges)
    let mappedNames = filteredPeople.map {
        return $0.key
    }
    return mappedNames
}

mapNames(namesAndAges)

// Challenge A

func repeatTask(times: Int, task: () -> Void){

        for _ in 0..<times {
            task()
        }
    }

repeatTask(times: 10, task: {print("Swift Apprentice is a Great Book!")})

// Alternative trailing closure syntax:
// repeatTask(times: 10) { print("Swift Apprentice is a great book!") }

// Challenge B
print("*** Challenge B")

func mathSum(length: Int, series: (Int) -> Int) -> Int {
 
    var sum: Int = 0
    print("Starting function")
    
    for number in 0...length {
        print("Starting for-in loop to sum numbers")
        sum += series(number)
        print("The sum is now \(sum)")
    }
    print("The sum of the series is \(sum)")
    return sum
}

mathSum(length: 10, series: {number in
    print("Using closure, finding square of the number \(number)")
    return number * number})

mathSum(length: 10, series: { (number: Int) -> Int in
    print("Fibonacci!!! ")
    if number < 0 {
        return 0
    } else if number == 1 || number == 2 {
        return 1
    } else {
        return fibonacci(number - 1) + fibonacci(number - 2)
    }
})

func fibonacci(_ number: Int) -> Int {
if number < 0 {
    return 0
} else if number == 1 || number == 2 {
    return 1
} else {
    return fibonacci(number - 1) + fibonacci(number - 2)
}
}

// Challenge C
print("*** Challenge C")

let appRatings = ["Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
                  "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
                  "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]]

var averageRatings = [String: Int]()

// iterate through the app ratings dictionary
// use reduce to calculate the average rating, store this in the av rating dictionary
// use filter and map to get a list of app names with a rating > 1


appRatings.forEach { app in
    print("Running forEach func for \(app)")
    
    let totalScore = app.value.reduce(0){
        return $0 + $1
    }
    let avRating = totalScore / app.value.count
    
    averageRatings["\(app.key)"] = avRating
    print("Average Rating of \(app.key) is \(avRating)")
}





