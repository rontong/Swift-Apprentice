// Swift Apprentice
// Chapter 14: Classes

// Mini-exercise 1

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

let john = Person(firstName: "Johnny", lastName: "Appleseed")
var homeOwner = john

john.firstName = "John"
john.firstName
homeOwner.firstName

homeOwner.lastName = "Peartree"
homeOwner.fullName
john.fullName

let imposterJohn = Person(firstName: "Johnny", lastName: "Appleseed")

john === homeOwner
john === imposterJohn
imposterJohn === homeOwner

// Mini-exercise 2

var arrayOne = [Person]()
var arrayTwo = [Person]()

let fakeJohn = Person(firstName: "John", lastName: "Spartacus")
let spartacus = Person(firstName: "Spartacus", lastName: "Spartacus")

arrayOne.append(john)
arrayOne.append(imposterJohn)

arrayTwo.append(imposterJohn)
arrayTwo.append(fakeJohn)
arrayTwo.append(spartacus)

func memberOf(person: Person, group: [Person]) -> Bool {
    var isMember = false
    
    for member in group {
        if member === person {
            isMember = true
            break
        } else {
            isMember = false
        }
    }
    return isMember
}

memberOf(person: john, group: arrayOne)
memberOf(person: john, group: arrayTwo)

// Mini-exercise 3

struct Grade {
    let letter: String
    let points: Double
    let credits: Double
}
class Student {
   
    var firstName: String
    var lastName: String
    var grades: [Grade] = []
   
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
   
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
    
    func calculateGPA() -> Double {

        let totalPoints = grades.reduce(0) {
            return $0 + $1.points
        }

        let totalCredits = grades.reduce(0) {
            return $0 + $1.credits
        }
        let GPA = totalPoints / totalCredits
        return GPA
    }
}

let jane = Student(firstName: "Jane", lastName: "Appleseed")
let history = Grade(letter: "B", points: 9.0, credits: 3.0)
let maths = Grade(letter: "A", points: 16.0, credits: 4.0)

jane.recordGrade(history)
jane.recordGrade(maths)

jane.calculateGPA()

extension Student {
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
}

// Challenge A
print("*** Challenge A")

class User {

    var masterList = [String : List]()

    func addList(list: List) {
        masterList[list.name] = list
    }

    func listForName(name: String) -> List? {
        
        let queryList = masterList[name]
        return queryList
    }

}

class List {
    
    var name : String
    var set = ["Lord of the Rings", "Star Wars", "Harry Potter"]
    
    init(name: String){
        self.name = name
    }
    
    func printList(){
        print("Movies in this list are \(set)")
    }
}

let mike = User()
let mikeList = List(name: "Mike List")
mike.addList(list: mikeList)
mike.listForName(name: "Mike List")?.printList()

let maddie = User()
let maddieList = mikeList
maddieList.set.append("The Room")
mikeList.printList()
maddieList.printList()

// Challenge B
print("*** Challenge B")

class Tshirt {
    var size : Int
    var color : String
    var price : Double
    
    init(size: Int, color: String, price: Double) {
        self.size = size
        self.color = color
        self.price = price
    }
}

class TshirtUser {
    var name : String
    var email : String
    var shoppingCart : ShoppingCart?
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}

struct Address {
    var name : String
    var street : String
    var city : String
    var zip : Int
}

class ShoppingCart {
    let user : TshirtUser
    var order : [Tshirt]?
    var address : Address
    
    init(user: TshirtUser, address: Address){
        self.user = user
        self.address = address
    }
    
    func cost() -> Double {
        var cost = 0.0
        if let allItems = order {
            let total = allItems.reduce(0){
                return $0 + $1.price
            }
            cost = total
        }
        return cost
    }
}

let redTShirt = Tshirt(size: 7, color: "Red", price: 20.0)
let blueTShirt = Tshirt(size: 8, color: "Blue", price: 52.5)

let tony = TshirtUser(name: "Tony", email: "tony@tony.com")
let tonyAddress = Address(name: "Tony", street: "20 Tony Street", city: "TonyTown", zip: 9000)

let tonyCart = ShoppingCart(user: tony, address: tonyAddress)

tonyCart.order = [Tshirt]()
tonyCart.order?.append(redTShirt)
tonyCart.order?.append(blueTShirt)
let finalCost = tonyCart.cost()

print("Final order \(tonyCart.order), shipping address \(tonyCart.address). Total cost is \(finalCost)")


