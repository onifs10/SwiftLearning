import Foundation


func noArgumentsAndNoReturnValue(){
    "I don't know what i'm doing"
}


noArgumentsAndNoReturnValue()

func plusTwo(value:Int) -> Int {
    value + 2
}

plusTwo(value: 30)


func customAdd (value1 a:Int, value2 b: Int) -> Int {
    a + b
}


let customAdded = customAdd(value1: 10, value2: 20)


// ignored external name
func customMins(_ lhs :Int, _ rhs: Int) {
    lhs - rhs
}


customMins(1, 4)



@discardableResult
func myCustomAdd(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs + rhs
}


func doSomethingComplicated(
    with value:Int
) -> Int {
    func mainLogic(value:Int) -> Int {
        value + 3
    }
    return mainLogic(value: value +  3)
}

doSomethingComplicated(with: 30)


func getFullName(
    firstName: String = "Foo",
    lastName: String = "Bar"
) ->  String {
    "\(firstName) \(lastName)"
}


getFullName()
getFullName(firstName: "Baz")
getFullName(lastName: "Bac")
