//
//  main.swift
//  Closures
//
//  Created by ayako_sayama on 2017-05-24.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import Foundation

print("Hello, World!")

func backwards(s1:String, s2:String)->Bool{
    return s1 > s2
}

//let names = ["mayu","akiko","aki","sara"]
//var reversed = names.sort{(
//    (s1:String, s2:String)->Bool in
//    return s1 > s2
//    )}

var array = ["A2", "B7", "A4", "C3", "A1", "A10"]
array.sort { $0.compare($1, options: .numeric) == .orderedAscending }
//array.sort()

//.words 's "dot" is an enum reference

print(array)


//The difference between sort() and sorted()

//Then you can just do the following to sort in place:
//
//var array = ...
//    array.sort()
//
//Or, alternatively, you can return a new array if you don't want to sort the original one in place:
//
//let array = ...
//let sortedArray = array.sorted()


struct Foo {
    var name: String
    var count: Int
}

var array2 = [
    Foo(name:"A", count: 2),
    Foo(name:"B", count: 7),
    Foo(name:"A", count: 7),
    Foo(name:"C", count: 3),
    Foo(name:"A", count: 1),
    Foo(name:"A", count: 10)
]


array2.sort{
 (object1, object2) -> Bool in
    if object1.name == object2.name{
        return object1.count > object2.count
    } else {
        return object1.name < object2.name
    }
}

print(array2)

//Same as above
//array2.sort{$0.name == $1.name ? $0.count > $1.count}

// Same as above
//array2.sort{($0.name, $0.count) < ($1.name, $1.count)}

extension Foo: Equatable{
    static func ==(lhs: Foo, rhs: Foo) -> Bool{
        return (lhs.name, lhs.count) == (rhs.name, rhs.count)
    }
}

extension Foo: Comparable {
    static func <(lhs: Foo, rhs: Foo) -> Bool {
        return (lhs.name, lhs.count) < (rhs.name, rhs.count)
    }
}

print(array2[0].name == array2[2].name)
print(array2[0].count < array2[2].count)


let divide = {(val1:Int,val2:Int) -> Int in
    return val1/val2
}

print(divide(16,4))

//ascending + descending

let count = [5, 10, -6, 75, 20]

//ascending
let ascending = count.sorted(by: >)
let descending = count.sorted()

print(ascending)
print(descending)


var states = ["California", "New York", "Texas", "Alaska"]

//map はそれぞれを計算する、という意味
let abbreviatedStates = states.map({ (state: String) -> String in
    let index = state.index(state.startIndex, offsetBy: 2)
    return state.substring(to: index).uppercased()
})

//shorterversion
//let abbreviatedStates = states.map({
//    state in state.substring(to: state.index(state.startIndex, offsetBy: 2)).uppercased()
//})

//with shorthand argument names
//let abbreviatedStates = states.map({
//    $0.substring(to: $0.index($0.startIndex, offsetBy: 2)).uppercased()
//})

// trailing closures
//let abbreviatedStates = states.map() {
//    $0.substring(to: $0.index($0.startIndex, offsetBy: 2)).uppercased()
//}

print(abbreviatedStates)


