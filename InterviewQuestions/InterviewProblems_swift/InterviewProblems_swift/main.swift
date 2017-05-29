import Foundation


//check if there are similar chars in a string and , erase them it there are.

struct Size {
    var width: Int
    let height: Int
}

var size1 = Size(width: 10, height:35)
size1.width = 20


// Equatable

protocol Rectangle: Equatable {
    var width: Double { get }
    var height: Double { get}
}


// all objects that conform to this protocol
// will now have default equality based on the
// protocol properties
func ==<T: Rectangle>(lhs: T, rhs: T) -> Bool {
    return lhs.width == rhs.width &&
        rhs.height == lhs.height
}


//Equatable Example2

struct Complex<T:Equatable> {
    let real: T
    let imaginary: T
}


extension Complex: Equatable{
    static func ==<T>(lhs:Complex<T>, rhs:Complex<T>) -> Bool{
        return (lhs.real == rhs.real) && (lhs.imaginary == rhs.imaginary)
    }
}

let a = Complex<Int>(real: 1, imaginary: 2)
let b = Complex<Int>(real: 1, imaginary: 2)



print("Equatable: \(a == b)") // true
print("Equatable: \(a != b)") // false



//Extention

extension String {
    func hoge() {
        print("koko")
    }
}

let s = "hello"
s.hoge()



//Mutating Function

struct Rectangle2 {
    var width = 1
    var height = 1
    mutating func scaleZBy(value:Int){
        width *= value
        height *= value
    }
}

var rectangle2 = Rectangle2()
rectangle2.scaleZBy(value: 5)
print(rectangle2.height)


//Inout


var c = 10
var d = 20

func swapThem(a:inout Int, b:inout Int){
    
    print("test!!")

    let tempA = a
    a = b
    b = tempA
    print("this is a: \(a)")
    print("this is b: \(b)")
    print("this is tempA: \(tempA)")
}

swapThem(a: &c, b: &d)

print(c) //the original parameter is swapped as well!
print(d)

// Functions as Return Type

func plus(input:Int)->Int{
    return input+1
}

func minus(input:Int) -> Int{
    return input-1 //function as return type
}

print("Function as Return type: \(minus(input: 4))")


// (Int)は plus minusの "input" パラメータだよー。
func chooseFunc(flag:Bool) -> (Int) -> Int{
    if(flag) {
        return plus
    } else{
        return minus
    }
}

let plusResult  = chooseFunc(flag: true)(42)
let minusResult = chooseFunc(flag: false)(42)

print(minusResult)  // 41
print(plusResult)

//Nested function2

func flag(_ flag:Bool) -> (Int) -> Int{
    func pluss(input:Int) -> Int
    { return input+1}
    func minuss (input:Int) -> Int
    { return input - 1}
    
    if (flag) {
        return pluss
    } else {
        return minuss
    }
}

print("Nested func2: \(flag(true)(30))")


// Nested Functions1

func printMessage(_ message: String) {
    let a = "hello world"
    
    func printHelloWorld() {
        print(a)
    }
    return printHelloWorld()
}

//let letsgo = printMessage("I love")
printMessage("Love")


//2: Nested Functions

func nextStep(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = nextStep(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")




//Queues!!

struct Queue<T>{
    var list = [T]()
    
    mutating func enqueue(_ element: T){
        list.append(element)
    }
    
    mutating func dequeue() -> T?{
        if !list.isEmpty{
            return list.removeFirst()
        } else{
            return nil
        }
    }
    
    func peak() -> T? {
        if !list.isEmpty{
            return list[0]
        } else{
            return nil
        }
    }
    
    var isEmpty:Bool{
        return list.isEmpty
    }
}

var collection = Queue<Int>()

collection.enqueue(5)
collection.enqueue(12)
collection.enqueue(2)
if let first = collection.dequeue() {
    print(first)
}

print(collection.peak()!)

print(collection)


//Stack
//
//public struct Stack<T: Comparable> {
//    
//    fileprivate var array = Array<T>()
//    
//    var isEmpty:Bool{
//        return array.isEmpty
//    }
//    
//    var count:Int{
//        return array.count
//    }
//    
//    mutating func push(_ element: T){
//        array.append(element)
//    }
//    
//    public mutating func pop() -> T?{
//        return array.popLast()
//    }
//    
//    var top: T?{
//        return array.last
//    }
//    
//    var max: T?{
//        return array.max()
//    }
//}
//
//var mystack = Stack<Int>()
//print("The max times to store data")
//
//let times = readLine().flatMap{ Int($0) }!
//print("1.push, 2.pop, 3.print max element")
//
//(1...times).forEach {_ in
//    let commandInfo = readLine()!.components(separatedBy: " ").flatMap{Int($0)}
//    switch commandInfo[0]{
//    case 1:
//        guard commandInfo.count == 2 else{
//            print("Invalid Input")
//            return
//        }
//        mystack.push(commandInfo[1])
//    case 2:
//        _ = mystack.pop() // _で返り値を無視できる。
//    case 3:
//        print(mystack.max!)
//    default:
//        break
//}
//
//}


// Another

//func judgeJustLandting() -> Bool {
//    
//    func calcDistance(start: (Int, Int), end: (Int, Int)) -> Int {
//        return abs(start.0 - start.1) + abs(end.0 - end.1)
//    }
//    
//    
//    print("Input start grid")
//    
//    let tmp: [String]! = readLine()?.components(separatedBy: " ")
//    
//    let tmp2 = tmp.flatMap{ Int($0) }
//    
//    let startGrid = (tmp2[0], tmp2[1])
//    
//    print("Input end grid")
//    
//    let tmp3: [String]! = readLine()?.components(separatedBy: " ")
//    
//    let tmp4 = tmp3.flatMap{ Int($0) }
//    
//    let endGrid = (tmp4[0], tmp4[1])
//    
//    print("Input Fuel")
//    
//    let fuel = readLine().flatMap{ Int($0) }!
//    
//    // print(startGrid, endGrid, fuel)
//    
//    let distance = calcDistance(start: startGrid, end: endGrid)
//    
//    // print(distance)
//    
//    guard distance < fuel else { return false }
//    
//    switch distance {
//    case _ where distance % 2 == 0:  //本来は let x みたいな var or constを設定しないといけん
//        return fuel % 2 == 0 ? true: false
//    case _ where distance % 2 == 1:
//        return fuel % 2 == 1 ? true : false
//    default:
//        fatalError("Never executed")
//    }
//    
//    fatalError("Never executed")
//    
//}
//
//print(judgeJustLandting())

//Recursion

func factorial(n:Int) -> Int{
    print(n == 0 ? 1 : n*factorial(n: n-1))
    return n == 0 ? 1 : n*factorial(n: n-1)
}

print(factorial(n: 5))

