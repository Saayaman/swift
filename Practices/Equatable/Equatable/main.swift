//
//  main.swift
//  Equatable
//
//  Created by ayako_sayama on 2017-05-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation

print("Hello, World!")


class Teacher: Equatable{
    var name:String
    
    init(name: String) {
        self.name = name
    }
}


func ==(lhs: Teacher, rhs: Teacher) -> Bool{
    return lhs.name == rhs.name
}


var one = Teacher(name:"AJ")
var two = Teacher(name: "Bob")


print(one == two)
print(one != two)
