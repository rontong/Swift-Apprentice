// Swift Apprentice
// Chapter 15: Advanced Classes

// Mini-exercise 

var gradList = [String]()

class Student {
    let firstName: String
    let lastName: String
    
    required init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    convenience init(transfer: Student) {
        self.init(firstName: transfer.firstName, lastName: transfer.lastName)
    }
    
    deinit {
        print("\(firstName) \(lastName) is being removed from memory! Adding to the graduates list")
        gradList.append("\(self.firstName) \(self.lastName)")
    }
}

var mark = Student(firstName: "Marky", lastName: "Mark")
mark = Student(transfer: mark)
print(gradList)

// Challenge 1, 2, 3
print("*** Challenge 1, 2, 3")

class A {
    
    init() {
        print("I'm A!")
    }
    
    deinit{
        print("Deinitializing A")
    }
}

class B : A {
    
    override init() {
        print("I'm B1!")
        super.init()
        print("I'm B2!")
    }
    
    deinit{
        print("Deinitializing B")
    }
}

class C : B {
    
    override init() {
        print("I'm C1!")
        super.init()
        print("I'm C2!")
    }
    
    deinit {
        print("Deinitializing C")
    }
}


do {
    let c = C()
    let a = c as A
    a
}

class StudentAthlete: Student {
    
    var sports: [String]
    
    required init(firstName: String, lastName: String) {
        
        self.sports = []
        super.init(firstName: firstName, lastName: lastName)
    }
}

class StudentBaseballPlayer : StudentAthlete {
    
    var position : String
    var number : Int
    var battingAverage : Double
    
    required init(firstName: String, lastName: String) {
        
        self.position = ""
        self.number = 0
        self.battingAverage = 20.0
        
        super.init(firstName: firstName, lastName: lastName)
        
    }
    
}

// Challenge 6
print("*** Challenge 6")

class Customer {
    let name: String
    var orders: [Order] = []
    
    init(name: String) {
        self.name = name
    }
    
    func add(_ order: Order) {
        order.customer = self
        orders.append(order)
    }
}

class Order {
    let product: String
    weak var customer: Customer?
    
    init(product: String) {
        self.product = product
    }
}

let customer = Customer(name: "Billy")
let order = Order(product: "Camera")

customer.add(order)
customer.name
customer.orders
