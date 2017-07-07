

import Foundation

//Question1: APline

class APLine{
    
    var a, b, c:Int

    init(_ a:Int, _ b:Int, _ c:Int) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    func getSlope() -> Double{
        return Double(-a/b)
    }
    
    func isOnline(_ x:Int, _ y:Int) -> Bool{
        return (a*x) + (b*y) + c == 0 ? true:false
    }
}

var line1 = APLine(20,4,-17)
var slope1:Double = line1.getSlope()
print(line1.isOnline(5,-2))
print(slope1)


//Question2: ScrabbleWord

func scrabbleWord(_ word:String) -> String{

    var arr = Array<Character>()
    var count = 0
    var hasA = false

    for char in word.characters{
        
        count += 1
        print("The count: \(count)")
        
        //look for an "a"
        if char == "a"{

            if char != word.characters.last!{
                hasA = true
            }
        } else{
            arr.append(char)
            if hasA{
                arr.append("a")
                hasA = false
            }
        }
    }
    return String(arr)
}

print(scrabbleWord("name"))


//Question 3: 

var matrix = [[1], [2, 2], [3, 3, 3], [4, 4, 4, 4]]


func setToZeros(mat: inout[[Int]]){
    mat = mat.flatMap{ _ in Array(repeating:0,count: mat.count)}
}

setToZeros(mat: &matrix)

//original matrix is changed = inout parameter changes original value
print("inout:\(matrix)")


var string = "Hello"
let arrayofstring = Array(string.characters)

//let string : String = "Hello"
//let arrayofstring = string.characters.map { (Character) -> Character in
//    return Character
//}
print(arrayofstring)

// Question 4:


class MenuItem{
    
    private var name: String
    private var price: Double
    
    init(name:String, price: Double) {
        self.name = name
        self.price = price
    }
    
    var getName:String{
        get{
            return self.name
        }
    }
    
    var getPrice:Double{
        get{
            return self.price
        }
    }
}

class Sandwich: MenuItem{
    override init(name:String, price:Double) {
        super.init(name: name, price: price)
    }
    
}

class Salad: MenuItem{
    override init(name:String, price:Double) {
        super.init(name: name, price: price)
    }
}

class Drink:MenuItem{
    override init(name:String, price:Double) {
        super.init(name: name, price: price)
    }
}

class Trio: MenuItem{
    
    var sandwich:Sandwich
    var salad:Salad
    var drink:Drink
    var priceTrio:Double = 0
    
    init(_ sandwich:Sandwich, _ salad:Salad, _ drink:Drink){
        self.sandwich = sandwich
        self.salad = salad
        self.drink = drink
        
        //
        super.init(name: "trio", price: 0.0)
    }
    
    func trioPrice() {
        var arr = [sandwich.getPrice, salad.getPrice,drink.getPrice]
        arr.sort(by: {$0>$1})
        print("price trio: \(arr)")
        self.priceTrio = arr[0]+arr[1]
    }
    
}

var sandWich1 = Sandwich(name: "BLT", price: 10.00)
var salad1 = Salad(name: "caeser", price: 12.00)
var drink1 = Drink(name: "Cola", price: 6.00)

var trio1 = Trio(sandWich1, salad1, drink1)
trio1.trioPrice()
print(trio1.priceTrio)


//Question 5:

func isThis(_ word:String, permutationOf anotherword: String) -> Bool{
    
    //string to character array
    var array1 = Array(word.characters)
    var array2 = Array(anotherword.characters)

    array1.sort()
    array2.sort()
    
    var match = true
    for (index,_) in array1.enumerated(){
        if array1[index] != array2[index] {
            match = false
        }
    }
    return match
}

print(isThis("this", permutationOf: "hist")) //true


//Question 6:

func isUnique(str:String)-> Bool{
    
    var wordArray = Array(str.characters)
    var isuniq = true
    
    print(wordArray.count-1)
    
    for index in 0...wordArray.count-1 {
        for index2 in 0...wordArray.count-1{
            //this is a matched letter
            if index != index2 && wordArray[index] == wordArray[index2] {
                isuniq = false
            }
        }
    }
    return isuniq
}

//this is not a unique character word
print(isUnique(str: "sdfgggg")) //false


//Question 7:

public struct Queue<Int> {
    
    fileprivate var elements = Array<Int>()

    public mutating func enqueue(_ item: Int){
        elements.append(item)
    }
    
    public mutating func dequeue(){
        elements.remove(at: 0)
    }
    
    public var isEmpty: Bool{
        return elements.isEmpty
    }
}


var myQ = Queue<Any>()

//方法1:
//var input = readLine()

//方法2: input how many times you will run
print("Please input num: total action number")
var input = readLine().flatMap({Int($0)})!


//?? readlineの中身をintに制御する方法がわからない。
//if let num = Int(input!) {
//    //var intInput = Int(input)
//    print(num)
//}
//方法1:

//if let typed = input {
//print(typed)
//}

//var intInput = Int(input)


for num in 0...input{
    print("Input 1,2 or 3")
    var action:Int = readLine().flatMap({Int($0)})!
    switch action{
    case 1: myQ.enqueue(readLine().flatMap({Int($0)})!)
    case 2: myQ.dequeue()
    case 3: print(myQ.elements.first ?? "There is no value")
    default: print("Wrong Number")
    }
}

// Question 8:

func canIMove(start:(Int,Int), end:(Int,Int), electricity:Int) -> Bool{

    let distance = abs(start.0-start.1)+abs(end.0-end.1)
    
    var canMove = true
    
    if distance % 2 == electricity % 2 && distance % 3 == electricity % 3{
        canMove = true
    } else {
        canMove = false
    }
    
    return canMove
}

print("Please input num: start[0] start[1]")
var start = (readLine()!.components(separatedBy: " "))
var startInt = start.flatMap({Int($0)})

print("Please input num: end[0] end[1]")
var end = (readLine()!.components(separatedBy: " "))
var endInt = end.flatMap({Int($0)})

print("Please input num: energy")
var energy = readLine().flatMap({Int($0)})!

let result = canIMove(start:(startInt[0],startInt[1]), end: (endInt[0], endInt[1]), electricity: energy)
print(result)


// Question 9: What is ARC? What is retain cycle? Give an example.

//"Swift uses Automatic Reference Counting (ARC) to track and manage your app’s memory usage. ARC automatically frees up the memory used by class instances when those instances are no longer needed.
//"as long as there is one strong reference pointing to an instance, the instance will not be deallocated

print("deallocation example:")


class TestClass {
    
    init() {
        print("init")
    }
    
    deinit {
        print("deinit")
    }
    
}

var testClass: TestClass? = TestClass()
testClass = nil
//deinit method will be printed out when memory is deallocated = when test class is nil

//"retain cycle is a situation in which instances are still pointing to each other after deallocation, which causes a memory leak. When a memory leak occurs, memory is used up every time the app is used.

print("retain cycle example:")

class RetainCycle {
    
    var retainCycle: RetainCycle? = nil //Now this is a weak reference!
    
    init() {
        print("init")
        
    }
    
    deinit {
        print("deinit")
    }
    
}

var retainCycle1: RetainCycle? = RetainCycle()
var retainCycle2: RetainCycle? = RetainCycle()

retainCycle1?.retainCycle = retainCycle2
retainCycle2?.retainCycle = retainCycle1

retainCycle1 = nil
retainCycle2 = nil

//Becaues retainCycle1 and retainCycle2 are pointing to each other, the memory is not allocated!
// deinit is NOT execyted

//"in order to prevent this from happening, you can use WEAK reference"

print("solving retain cycle example:")


class WeakReference{
    
    weak var weakProperty:WeakReference? = nil
    init() {
        print("init")
    }
    
    deinit {
        print("Weak reference is deinit!")
    }
}


var reference1:WeakReference? = WeakReference()
var reference2:WeakReference? = WeakReference()

reference1?.weakProperty = reference2?.weakProperty

reference1 = nil
reference2 = nil

