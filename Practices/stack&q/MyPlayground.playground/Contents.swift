//: Playground - noun: a place where people can play

import UIKit




public struct Stack<T: Comparable> {
    
    fileprivate var array = Array<T>()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
    
    
    public var max: T? {
        return array.max()
    }
}


var myStack = Stack<Int>()

print("Input number of times that accepts command")

//guard let times = readLine().flatMap{Int($0)} else{
//    return 0
//}

let times = readLine().flatMap{ Int($0) }?

print("1: push 2: pop 3: print max element")

(1...times).forEach {_ in
    
    let commandInfo = readLine()!.components(separatedBy: " ").flatMap{ Int($0) }
    
    switch commandInfo[0] {
    case 1:
        guard commandInfo.count == 2 else {
            print("Invalid input")
            return
        }
        myStack.push(commandInfo[1])
    case 2:
        _ = myStack.pop()
    case 3:
        print(myStack.max!)
    default:
        break
    }
}
