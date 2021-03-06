//: ## Lesson 7 Exercises - Enums & Structs

//: __Problem 1__
//:
//: At the end of the code snippet below, what is the value of macchiato.steamedMilk when EspressoDrink is implemented as a struct? What about when EspressoDrink is implemented as a class?
enum Amount {
    case none
    case splash
    case some
    case alot
}

struct EspressoDrink {
    let numberOfShots: Int
    var steamedMilk: Amount
    let foam: Bool
    
    init(numberOfShots: Int, steamedMilk: Amount, foam: Bool) {
        self.numberOfShots = numberOfShots
        self.steamedMilk = steamedMilk
        self.foam = foam
    }
}

class EspressoDrink2 {
    let numberOfShots: Int
    var steamedMilk: Amount
    let foam: Bool
    
    init(numberOfShots: Int, steamedMilk: Amount, foam: Bool) {
        self.numberOfShots = numberOfShots
        self.steamedMilk = steamedMilk
        self.foam = foam
    }
}

var macchiato = EspressoDrink(numberOfShots: 2, steamedMilk: .none, foam: true)
var espressoForGabrielle = macchiato
espressoForGabrielle.steamedMilk = .splash
//espressoForGabrielle is just copied, it is not
macchiato.steamedMilk

var macchiato2 = EspressoDrink2(numberOfShots: 2, steamedMilk: .none, foam: true)
var espressoForGabrielle2 = macchiato2
espressoForGabrielle2.steamedMilk = .splash
//espressoForGabrielle is just copied, it is not
macchiato2.steamedMilk

//クラスだとポインターが同じ方向を向いていて、struct だとコピーされるだけ！！


//: __Problem 2__
//:
//: __2a.__
//: Write an enum to represent the five fingers on a human hand.
//:
enum Fingers{
    case thumb
    case indexFinger
    case middleFinger
    case ringFinger
    case pinkyFinger
}

//: __2b.__
//: Associate an Int value with each finger.

enum Finger:Int{
    case thumb = 1
    case indexFinger = 2
    case middleFinger = 3
    case ringFinger = 4
    case pinkyFinger = 5
}


//: __Problem 3__
//:
//: Enum, class, or struct?
//:
//: Uncomment the code below and choose whether each type should be an enum, class, or struct.
struct Window {
    let height: Double
    let width: Double
    var open: Bool
}

enum WritingImplement {
    case pen
    case pencil
    case marker
    case crayon
    case chalk
}

struct Material {
    let name: String
    let density: Double
    let stiffness: Double
}


struct Bicycle {
    let frame: Material
    let weight: Double
    let category: String

    static var bikeCategories: [String] = ["Road", "Touring", "Mountain", "Commuter", "BMX"]

    func lookCool() {
        print("Check out my gear-shifters!")
    }
}

class Cyclist {
    var speed: Double
    let agility: Double
    let bike: Bicycle

    var maneuverability: Double {
        get {
            return agility - speed/5
        }
    }

    init(speed: Double, agility: Double, bike: Bicycle) {
        self.speed = speed
        self.agility = agility
        self.bike = bike
    }

    func brake() {
        speed -= 1
    }

    func pedalFaster(factor: Double) {
        speed * factor
    }
}

enum Size: String {
    case small = "8 ounces"
    case medium = "12 ounces"
    case large = "16 ounces"
}

print("\(Size.small.rawValue)")
print("\(Size.small.hashValue)")


//: __Problem 4__
//:
//: Write a cookie struct.
//:
//: __4a.__
//: Include 2 stored properties. Examples might include a string representing flavor, or an int representing minutesSinceRemovalFromOven.

struct Cookie{
    var flavor = "Sweet"
    var minuitesSinceRemovalFromOven = 10
    
    var delicious: Bool{
        get{
            var good = true
            if minuitesSinceRemovalFromOven > 10 {
                good = false
            }
            return good
        }
    }
    
    
    func tempt(delicious:Bool) -> String {
        
        var str = ""
        if !delicious {
            str = str + "I am so tempted!"
        } else{
            str = str + "I am not tempted!"
        }
        
        return str
    }
}

//:__4b.__
//: Add a computed property, "delicious", a bool whose value depends upon the values of the stored properties.

//:__4c.__
//:Include a method. For example, the method tempt() might return or print out an indication of a person being tempted to eat the cookie.

//: __4d.__
//: Create an instance of your Cookie struct and call its method.


var cookie1 = Cookie(flavor: "Super", minuitesSinceRemovalFromOven: 20)
cookie1.tempt(delicious: cookie1.delicious)



//: __Problem 5__
//:
//: Write a class to represent a listing for a Bed and Breakfast.
//:


enum House{
    case apartment
    case house
    case condo
    case room
}

class BnBListing{
    var housing:House
    var availability:Bool
    var size:Int
    
    func book() -> String{
        if availability {
            return "House is available!"
        } else{
            return "House is not available!"
        }
    }
    
    init(housing:House, availability:Bool, size:Int) {
        self.housing = housing
        self.availability = availability
        self.size = size
    }
}


var house1 = BnBListing(housing: .apartment, availability: true, size: 20)
print(house1.book())



//: __5a.__
//: Include 3 stored properties. Examples might include a category representing the type of housing i.e. apartment or house, or a bool representing availability.

//: __5b.__
//: Consider writing a helper enum and incorporating it as one of your properties.

//: __5c.__
//: Include at least one method. For example, the method book() might toggle the availability bool or return a reservation confirmation.

//: __5d.__
//: Create an instance of your BnBListing class and call one of its methods.
