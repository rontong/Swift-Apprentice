// Swift Apprentice
// Chapter 18 - Generics

// Mini-exercises & Challenge

protocol Pet {
    var name: String { get }
}

class Cat : Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog : Pet {
    var name: String
    init(name: String){
        self.name = name
    }
}

// Kepper looks after a different number of animals throughout the day. Access count of all animals, and access a particular animal. christine.lookAfter(someCat)

class Keeper<Animal: Pet> {
    
    var name: String
    
    var animalArray : Array<Animal>
    
    init(name: String, animalArray: [Animal]){
        self.name = name
        self.animalArray = animalArray
    }
    
    func countAnimals() -> Int {
        print("There are \(animalArray.count) animals in \(name)'s care")
        return animalArray.count
    }
    
    func animalAtIndex(_ index: Int) -> Animal {
        print("The animal at index \(index) is \(animalArray[index])")
        return animalArray[index]
    }
    
    func lookAfter(animalName: Animal) {
        print("\(name) is currently looking after \(animalName)")
    }
}

let mittens = Cat(name: "Mittens")
let kitty = Cat(name: "Kitty")
let snowball = Cat(name: "Snowball")
let buttons = Cat(name: "Buttons")
let chairmanMeow = Cat(name: "Chairman Meow")

var catArray : [Cat] = [mittens, kitty, snowball, buttons, chairmanMeow]

let christine = Keeper(name: "Christine", animalArray: catArray)
christine.countAnimals()
christine.animalAtIndex(3)
christine.lookAfter(animalName: mittens)
