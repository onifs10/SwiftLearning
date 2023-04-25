import Foundation

let myAge = 10
let yourAge = 20

if myAge > yourAge {
    "i am older"
}else if myAge < yourAge{
    "i am younger"
}else{
    "we are the same age"
}

let myMothersAge = myAge + 20

let doubleMyAge = myAge * 2

// types of operator
// unary prefix
let foo = !true
// unary postfix
let name = Optional("test")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
// binary infix
let result = 1 + 2

let age = 30

let message:String = age < 18
    ? "You are a child"
    : "you and adult"
