import UIKit

/*:
## Exercise - Guard Statements

 Imagine you want to write a function to calculate the area of a rectangle. However, if you pass a negative number into the function, you don't want it to calculate a negative area. Create a function called `calculateArea` that takes two `Double` parameters, `x` and `y`, and returns an optional `Double`. Write a guard statement at the beginning of the function that verifies each of the parameters is greater than zero and returns `nil` if not. When the guard has succeeded, calculate the area by multiplying `x` and `y` together, then return the area. Call the function once with positive numbers and once with at least one negative number.
 */
func calculateArea(x : Double, y : Double) -> Double? {
    guard x > 0 else {
        return nil
    }
    guard y > 0 else {
        return 0
    }
    return x * y
}

if let area1 = calculateArea(x:4,y:6) {
    print(area1)
}
else{
    print("Given length is less than 0")
}

if let area2 = calculateArea(x:-4,y:6) {
    print(area2)
}
else{
    print("Given length is less than 0")
}
//:  Create a function called `add` that takes two optional integers as parameters and returns an optional integer. You should use one `guard` statement to unwrap both optional parameters, returning `nil` in the `guard` body if one or both of the parameters doesn't have a value. If both parameters can successfully be unwrapped, return their sum. Call the function once with non-`nil` numbers and once with at least one parameter being `nil`.
func add(x : Int? , y : Int?) -> Int? {
    guard let x, let y else {
        return nil
    }
    return x + y
}

if let sum1 = add(x: 5, y: 6) {
    print(sum1)
}else{
    print("Value is empty")
}
if let sum2 = add(x: nil, y: 6) {
    print(sum2)
}else{
    print("Value is empty")
}
/*:
 When working with UIKit objects, you will occasionally need to unwrap optionals to handle user input. For example, the text fields initialized below have `text` properties that are of type `String?`.

 Write a function below the given code called `createUser` that takes no parameters and returns an optional `User` object. Write a guard statement at the beginning of the function that unwraps the values of each text field's `text` property, and returns `nil` if not all values are successfully unwrapped. After the guard statement, use the unwrapped values to create and return and instance of `User`.
 */
struct User {
    var firstName: String
    var lastName: String
    var age: String
}

let firstNameTextField = UITextField()
let lastNameTextField = UITextField()
let ageTextField = UITextField()

firstNameTextField.text = "Christine"
lastNameTextField.text = "Huang"
ageTextField.text = "28"

func createUser() -> User? {
    guard let firstName = firstNameTextField.text , let lastName = lastNameTextField.text, let age = ageTextField.text else{
        return nil
    }
    return User(firstName: firstName , lastName: lastName , age: 32)
}

//:  Call the function you made above and capture the return value. Unwrap the `User` with standard optional binding and print a statement using each of its properties.
if let user1 = createUser(){
    print(user1.firstName)
    print(user1.lastName)
    print(user1.age)
}

/*:
page 1 of 2  |  [Next: App Exercise - Guard](@next)
 */
