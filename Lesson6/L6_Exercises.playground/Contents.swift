//: ## Lesson 6 Exercises - Classes, Properties and Methods

import UIKit

//: __Problem 1__
//:
//: __1a.__
//: The compiler is complaining because the class Animal has no initializers. Write an init method for the Animal class and quiet this error. Include a mechanism to initialize the length of the Animal's tail using the Tail struct provided.
struct Tail {
    let lengthInCm: Double
}
//なぜ struct を使うの？
//ほぼクラスと一緒。

class Animal {
    
    struct Tail {
        let lengthInCm: Double
    }
    
    var species: String = ""
    let tail: Tail

//    var tailLength = tail.lengthInCm
    
    init(species: String, tailLength:Double) {
        self.species = species
        self.tail = Tail(lengthInCm: tailLength)
    }
}
//: __1b.__
//: Instantiate and initialize a few different Animals.
var animal1 = Animal(species: "Monkey", tailLength: 20)
var animal2 = Animal(species: "Bear", tailLength: 40)
var animal3 = Animal(species: "Beaver", tailLength: 30)


//: __Problem 2__
//:
//: Below are the beginnings of the Peach class.
class Peach {
    
    let variety: String
    
    // Softness is rated on a scale from 1 to 5, with 5 being the softest
    var softness: Int
    var varieties:[String]
    
    init(variety: String, softness: Int, varieties:[String]) {
        self.variety = variety
        self.softness = softness
        self.varieties = varieties
    }
    
    func ripen() -> String{
        softness += 1
        return "Peach is ripe!";
    }
}


var peach1 = Peach(variety: "Bell", softness: 1, varieties:["great", "pink"])
peach1.ripen
print(peach1.softness)
//: __2a.__
//: Add a type property to the Peach class called "varieties". It should hold an array of different types of peaches.
//:
//: __2b.__
//: Add an instance method called ripen() that increases the value of the stored property, softness, and returns a string indicating whether the peach is ripe.
//:
//: __2c.__
//: Create an instance of the Peach class and call the method ripen().

//: __Problem 3__
//:
//: __3a.__
//:Add the computed property, "cuddlability", to the class, FluffyDog. Cuddlability should be computed based on the values of the stored properties, fluffiness and droolFactor.
var theFluffiestDog = UIImage(named:"fluffyDog")!
class FluffyDog {
    let name: String
    let fluffiness: Int
    let droolFactor: Int
    let cuddleability:Int
    
    init(name: String, fluffiness: Int, droolFactor: Int) {
        self.name = name
        self.fluffiness = fluffiness
        self.droolFactor = droolFactor
        self.cuddleability = fluffiness+droolFactor
    }
    
    func chase(_ wheeledVehicle: String)-> String {
        return "Where are you going, \(wheeledVehicle)? Wait for me! No, don't go! I will catch you!"
    }
}

var dogs = FluffyDog(name:"Johnny", fluffiness: 3, droolFactor: 4)
print(dogs.chase("Car"))
//: __3b.__
//: Instantiate and initialize an instance of the class, FluffyDog. Use it to call the method, chase().

//: __Problem 4__
//:
//: __4a.__
//: Write an instance method, bark(), that returns a different string based on the value of the stored property, size.
enum Size: Int {
    case small
    case medium
    case large
}

class ChattyDog {
    let name: String
    let breed: String
    let size: Size
    
    init(name: String, breed: String, size: Size) {
        self.name = name
        self.breed = breed
        self.size = size
    }
    
//    func bark() -> String {
//        switch size {
//        case .small:
//            return "The dog is small!"
//        case .medium:
//            return "The dog is meduim"
//        case .large:
//            return "The dog is large"
//        }
//    }

    //自分のinstanceを使えなくなる //type method
    static func speak() -> String {
        return "Dogs can't speak"
    }
}

var chatDogs = ChattyDog(name: "Maasa", breed: "Dalmacian", size: .small)
//chatDogs.bark()
print(ChattyDog.speak())
//: __4b.__
//: Create an instance of ChattyDog and use it to call the method, bark().

//: __4c.__
//: Rewrite the method, bark(), as a type method and rename it speak(). Call your type method to test it out.

//: __Problem 5__
//:
//:__5a.__
//: Write an initialization method for the House class below.
enum Quality {
    case poor, fair, good, excellent
}

enum NaturalDisaster {
    case earthquake
    case wildfire
    case hurricane
}



class House {
    var numberOfBedrooms: Int = 0
    let location: Quality
 
    func willStayStanding(_ naturalDisaster:NaturalDisaster)-> Bool {
        switch naturalDisaster {
        case .earthquake:
            return true
        case .wildfire:
            return true
        case .hurricane:
            return false
        }
    }
    
    var worthyOfAnOffer: Bool{
        get{
            
            switch (numberOfBedrooms,location) {
            case (0,.poor):
                return false
            case (1...2,.fair):
                return true
            case _ where numberOfBedrooms > 3:
                return false
            default:
                return true
            }
        }
    }
    
    //必ず初期値が入ってないものでも初期化しないといけない。
    init(location:Quality) {
        self.location = location
    }
}

//: __5b.__
//: Create an instance of the House class and use it to call the method, willStayStanding().  This method takes in a parameter of type NaturalDisaster and return a Bool indicating whether the house will stay standing in a given natural disaster.
var house1 = House(location: .fair)
house1.numberOfBedrooms = 3
print(house1.willStayStanding(.earthquake))
//: __5c.__
//: Add a computed property called, "worthyOfAnOffer". This property should be a Bool, whose return value is dependent upon some combination of the stored properties, numberOfBedrooms and location.






