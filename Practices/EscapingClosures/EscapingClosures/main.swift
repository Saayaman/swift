//
//  main.swift
//  EscapingClosures
//
//  Created by ayako_sayama on 2017-05-17.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation


var handlerAry: [() -> Void] = []


func someFunc(handler: @escaping () -> Void){
    handlerAry.append(handler)
}


func someFunc2(closure: () -> Void){
    closure()
}

someFunc2(closure: {print("hello")})

someFunc {print("bye.")}
someFunc {print("byebye.")}


handlerAry[0]()
handlerAry[1]()

class someClass{
    var x = 10
    func doSomething(){
        someFunc() {
            self.x = 100
        }
        
        someFunc2() {
            x = 200
        }
    }
}


let instance = someClass()

print("line55: \(instance.x)")
instance.doSomething()


print("line57: \(instance.x)")

handlerAry[0]()
print("line60: \(instance.x)")



var student = ["Chris", "Marc", "Alex"]
print(student.count)

let studentProvider = {student.remove(at: 0)}
//studentProvider()

print(student)


func register(_ studentProvider: () -> String){
    print("Students \(studentProvider()) is registering.")
}


register(studentProvider)


func register2(_ studentProvider: @autoclosure @escaping () -> String){
    print("Students \(studentProvider()) is registering.")
}


register2(student.remove(at: 0))



func outer() -> () -> Void {
    var x = 10
    
    func closure() {
        print("x is \(x)")
        x = x + 1
    }
    
    return closure
}


//outer() は使えない。必ず別なfunctionを介す必要がある。

var val = outer()
val()
val()
val()


