import Foundation

//func add(_ lhs:Int, _ rhs:Int) -> Int {
//    lhs + rhs
//}
//


let add: (Int, Int) -> Int = { (lhs:Int, rhs:Int) -> Int in
    lhs + rhs
}

add(30,20)


//traling closure
func cummulator(_ lhs :Int, _ rhs:Int,using adder:(Int, Int) -> Int) -> Int {
    adder(lhs,rhs)
}


// passing a trailing closure option --- this does not add more compile time, since we have infos needed by compiler
cummulator(1,20){(lhs:Int, rhs:Int) -> Int in lhs + rhs }

// cleaning up the data type because we have type inference swift -- not to good for compile time
cummulator(1,20){(lhs, rhs) in lhs + rhs }

//more clean up
cummulator(1,20){ $0 + $1}

//pasing special closure to functions


let ages = [30,20,90, 40]

// passing operators to closures
ages.sorted(by: >)
ages.sorted(by: <)



// non trailing closure syntax
func cummulator2(using adder:(Int, Int) -> Int,_ lhs :Int, _ rhs:Int) -> Int {
    adder(lhs,rhs)
}

cummulator2(using:{$1 + $0},3,4)


func addTenTo (_ value: Int) -> Int {
    value + 10
}


func doAddition(
    on value: Int,
    using function : (Int) -> Int
) {
    function(value)
}

doAddition(on: 20, using: {$0 + 30})
// using a function for closures
doAddition(on: 20, using: addTenTo(_:))
