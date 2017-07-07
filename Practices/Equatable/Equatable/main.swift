//
//  main.swift
//  Equatable
//
//  Created by ayako_sayama on 2017-05-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation

class Teacher: Equatable{


    var name:String
    var age:Int
    
    init(name: String, age:Int) {
        self.name = name
        self.age = age
    }
    
    //we compare because we cant.
    static func ==(lhs: Teacher, rhs: Teacher) -> Bool{
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

var teachers:[Teacher] = []

var one = Teacher(name:"AJ", age:20)
var two = Teacher(name: "Bob", age:30)
var three = Teacher(name: "Amy", age: 50)
var four = Teacher(name: "John", age:30)
var five = Teacher(name: "AJ", age: 20)

teachers.append(one)
teachers.append(two)
teachers.append(three)
teachers.append(four)



if one.name == two.name{
    print("match!")
}

if one == two{
    print("same!")
}

if teachers[0] == teachers[1]{
    
}


print(one == two)
print(one != two)
print(one == five)
