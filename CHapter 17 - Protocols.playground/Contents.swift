// Swift Apprentice
// Chapter 17 - Protocols

// Mini-exercises

protocol Area {
    var area : Double { get }
}

var length = 2.0

struct Square : Area {
    var area: Double {
        return length * length
    }
}

struct Triangle : Area {
    var area: Double {
        return 0.5 * length * length
    }
}

struct Circle : Area {
    var area: Double {
        return .pi * length * length
    }
}

let square = Square()
let triangle = Triangle()
let circle = Circle()

// Challenge A
print("*** Challenge A")

protocol Vehicle {
    func accelerate()
    func stop()
}

protocol Wheeled {
    var numberOfWheels : Int { get }
    var wheelSize : Double { get set }
}



class Bike: Vehicle, Wheeled {
    
    let numberOfWheels : Int
    var wheelSize : Double
    
    var peddling = false
    var brakesApplied = false
    
    init(numberOfWheels: Int, wheelSize: Double) {
        self.numberOfWheels = numberOfWheels
        self.wheelSize = wheelSize
    }
    
    func accelerate() {
        peddling = true
        brakesApplied = false
        }
    
    func stop() {
        peddling = false
        brakesApplied = true
    }
    
}

extension Bike: Equatable {
    static func ==(lhs: Bike, rhs: Bike) -> Bool {
        return lhs.numberOfWheels == rhs.numberOfWheels &&
        lhs.wheelSize == rhs.wheelSize
    }
}

extension Bike: Comparable {
    static func <(lhs: Bike, rhs: Bike) -> Bool {
        return lhs.numberOfWheels < rhs.numberOfWheels
    }
    
}

let roadBike = Bike(numberOfWheels: 2, wheelSize: 16.0)
let quadBike = Bike(numberOfWheels: 4, wheelSize: 25.0)
let mountainBike = Bike(numberOfWheels: 2, wheelSize: 20.0)

var bikeArray : [Bike] = [roadBike, quadBike, mountainBike]
bikeArray.sort()

// Challenge B
print("*** Challenge B")

protocol Feed {
    func feedAnimal()
}

protocol Caged {
    func cageAnimal()
}

protocol Tanked {
    func keepInTank()
}

protocol Exercise {
    func takeForWalk()
}

protocol Clean {
    func cleanHousing()
}

class Dog : Feed, Exercise {
    func feedAnimal() {
        print("Filling up dog bowl")
    }
    func takeForWalk() {
        print("Taking the Dog for a Walk")
    }
}

class Cat : Feed, Exercise {
    func feedAnimal() {
        print("Filling cat bowl")
    }
    func takeForWalk() {
        print("Taking the Cat for a Walk")
    }
}

class Fish : Feed, Tanked, Clean {
    func feedAnimal() {
        print("Feeding the Fish")
    }
    func keepInTank() {
        print("Fish is in the Tank")
    }
    func cleanHousing() {
        print("Cleaning the Fishtank")
    }
}

class Bird : Feed, Caged, Clean {
    func feedAnimal() {
        print("Feeding bird seed")
    }
    func cageAnimal() {
        print("Bird is sitting in the cage")
    }
    func cleanHousing() {
        print("Cleaning the birdcage")
    }
}

let dog = Dog()
let cat = Cat()
let bird = Bird()
let fish = Fish()

var feedingArray : [Feed] = [dog, cat, bird, fish]
var cagedArray : [Caged] = [bird]
var cleaningArray : [Clean] = [bird, fish]
var walkingArray : [Exercise] = [cat, dog]
var tankedArray : [Tanked] = [fish]

func feedAnimals() {
    for animal in feedingArray {
    animal.feedAnimal()
    }
}

func cageAnimals() {
    for animal in cagedArray {
        animal.cageAnimal()
    }
}



