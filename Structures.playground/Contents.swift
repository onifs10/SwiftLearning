import Foundation

// defining a struct
// constructors are implicit in swift structs
// Note:structures are value types

struct Person {
    let name:String
    let age: Int
}

// initializing a struct
let foo = Person(name: "Foo", age: 30)

// pick props from a struct
foo.name
foo.age


//custom constructor

struct CommodoreComputer{
    let name: String
    let manufacturer = "Commodore"
    // Custom constructor
//    init(name:String){
//        self.name = name
//        self.manufacturer = "Commodore"
//    }
}


let c64 = CommodoreComputer(name: "My commodore")
let c128 = CommodoreComputer(name: "My commodore")


//computed props

struct Person2{
    let firstName: String
    let lastName: String
    var FullName: String {
        "\(firstName) \(lastName)"
    }
}

let me = Person2(firstName: "boluwatife", lastName: "Onifade")

me.FullName


// mutable props
// Note: structures are immutable by default
// U have to use mutating keyword to define a function that mutates a props
struct Car {
    var currrentSpeed: Int
    mutating func drive(speed:Int) {
        "Driving ..."
        currrentSpeed = speed
    }
}

let immutableCar = Car(currrentSpeed: 200)
var mutableCar = Car(currrentSpeed: 300)

let copy = mutableCar
mutableCar.drive(speed:30)
copy.currrentSpeed
mutableCar.currrentSpeed


// stucture can not subclasses other structures (No inheritance)

struct LivingThing {
    init(){
        "I'm a living thing"
    }
}


// adding custom logic when coping stuct

struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(manufacturer: self.manufacturer, currentSpeed:currentSpeed)
    }
}
let bike1 = Bike(manufacturer: "HD", currentSpeed: 20)
var bike2 = bike1.copy(currentSpeed: 10)

bike1.currentSpeed
bike2.currentSpeed
