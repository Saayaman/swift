import UIKit

//: # Lesson 2 Exercises
//: ## Optionals
//: ### Exercise 1
//: When retrieving a value from a dictionary, Swift returns an optional.
//:
//: 1a) The variable, director, is an optional type. Its value cannot be used until it is unwrapped. Use `if let` to carefully unwrap the value returned by `moviesDict[movie]`
var moviesDict:Dictionary = [ "Star Wars":"George Lucas", "Point Break":"Kathryn Bigelow"]
var movie = "Star Wars"
var director = moviesDict[movie]

//反対はできない、valueからkeyはとれない「
//: 1b) Test your code by inserting different values for the variable `movie`.
//: 1b) Test your code by inserting different values for the variable `movie`.
//追加
if let director = moviesDict[movie]{
    print("\(director) directed \(movie)")
} else{
    print("No director found")
}
//: ### Exercise 2
//: The LoginViewController class below needs a UITextField to hold a user's name. Declare a variable for this text field as a property of the class LoginViewController. Keep in mind that the textfield property will not be initialized until after the view controller is constructed.
class LoginViewController: UIViewController {
    var myButton: UIButton!
}

//追加
class LoginViewController: UIViewController {
    var nameTextfield:UITextField!
}

//: ### Exercise 3
//: The Swift Int type has an initializer that takes a string as a parameter and returns an optional of type Int?.
//:
//: 3a) Finish the code below by safely unwrapping the constant, `number`.

var numericalString = "3"
var number = Int(numericalString)
//TODO: Unwrap number to make the following print statement more readable.


if let number = Int(numericalString) {
    print("\(String(describing: number)) is the magic number.")
} else{
    print("There is no magic number")
}

//: 3b) Change the value of numericalString to "three" and execute the playground again.
var numericalString2 = "three"
umber = Int(numericalString2)
if let number = number {
    print("\(number) is the magic number.")
} else {
    print("No magic numbers here.")
}
//: ### Exercise 4
//: The class UIViewController has a property called tabBarController.  The tabBarController property is an optional of type UITabBarController?. The tabBarController itself holds a tabBar as a property. Complete the code below by filling in the appropriate use of optional chaining to access the tab bar property.
//全然わからなかった


var viewController = UIViewController()
//if let tabBar = //TODO: Optional chaining here {
//    print("Here's the tab bar.")
//} else {
//    print("No tab bar controller found.")
//}
// Solution
if let tabBar = viewController.tabBarController?.tabBar {
    print("Here's the tab bar.")
} else {
    print("No tab bar controller found.")
}
//: ### Exercise 5
//: Below is a dictionary of paintings and artists.
//:
//: 5a) The variable, artist, is an optional type. Its value cannot be used until it is unwrapped. Use `if let` to carefully unwrap the value returned by `paintingDict[painting]`.

var paintingDict:Dictionary = [ "Guernica":"Picasso", "Mona Lisa": "da Vinci", "No. 5": "Pollock"]
var painting = "Mona Lisa"
var artist = paintingDict[painting]

print("\(String(describing: artist)) is the magic number.")


if artist = paintingDict[painting] {
    print("\(artist)) is the magic number.")
} else {
    print("Artist not found")
}
//: ### Exercise 6
//: Set the width of the cancel button below.  Notice that the cancelButton variable is declared as an implicitly unwrapped optional.
var anotherViewController = UIViewController()
var cancelButton: UIBarButtonItem!
cancelButton = UIBarButtonItem()

// TODO: Set the width of the cancel button.
cancelButton.width = 60
//: ### Exercise 7
//: The class UIViewController has a property called parent.  The parent property is an optional of type UIViewController?. We can't always be sure that a given view controller has a parent view controller.  Safely unwrap the parent property below using if let.
var childViewController = UIViewController()
// TODO: Safely unwrap childViewController.parent
if parent = childViewController.parent{
    print("Here's the parent view controller")
} else {
    print("No parents, let's party!")
}




//Questions: what is UIViewController()? 
