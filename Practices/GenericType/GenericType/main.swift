//
//  main.swift
//  GenericType
//
//  Created by ayako_sayama on 2017-05-23.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


//Generic function1

var firstString = "someString"
var secondString = "anotherString"

swap(&firstString, &secondString)

print(firstString) //swapped!
print(secondString) //swapped!



// Generic Function 2: Same thing as above

func swapTwo(_ a : inout Any, _ b: inout Any){
    
    print("a is \(a), b is \(b)")
    let temporaryA = a
    a = b
    b = temporaryA
    print("swapped! a is \(a), b is \(b)")
}

//cannot do this! generic type can only take in variables
//swap("Hi", "bye")


//can only swap the same data types!!
var firstString2 = 3
var someInt2 = 1
swap(&firstString2, &someInt2)


//Generic Function3:

let stringArr = ["Hi", "Bye", "wee"]
let intArr = [1,4,5]

func printEach<T>(a: Array<T>){
    
    for oneItem in a {
        print(oneItem)
    }
}

printEach(a:stringArr)
printEach(a:intArr)




let divide = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
}


func doDivide(_ val1:Int, _ val2:Int) -> Int{
    return val1 / val2
}

print(divide(200,20))
print(doDivide(200,20))
