/*
 #Table of contents
     - Variables
     - Strings
     - Arrays
     - ControlFlow
     - Functions
     - Closures
     - Enumerations
     - Classes And Structures
     - Initialization
     - Properties
     - Extensions
     - Protocols
     - Loops including for, while and Swift range syntax
     - Conditionals including expressions, boolean logic and operators
     - Dictionaries
     - Tuples
     - Type Casting
     - Guard & Defer
     - Optional Chaining
     - Advanced Operators
     - Error Handling
*/


//##Variables
var num = 0
num += 1

//Convert variables to strings
var numString:String = String(num)
print("Updated number: " + numString)
num += 5
print("Updated number: \(num)")

let stringC = """
Hey this is a
example of multiple Line
string by tutorialsPoint
"""

//stringC.count
//stringA.isEmpty
var stringA = "" // there is empty string but no empty charater variables

if stringA.isEmpty {
    print( "stringA is empty" )
}


//## Functions
//Define a function
func greetUser(name: String, greeting:String) -> String
{
    return "\(greeting), \(name)"
}

let greet1 = greetUser(name: "Sophia", greeting: "Hello")

//Define a function
func greetUser(name: String, bySaying greeting:String = "Hello") -> String
{
    return "\(greeting), \(name)"
}

var greet2 = greetUser(name: "Lu", bySaying: "hi")

var greet3 = greetUser(name: "Lu")

//_ states that you do not need to name the parameters in your function call
func greetUser(_ name: String, _ greeting:String) -> String
{
    return "\(greeting), \(name)"
}

var greet4 = greetUser("Sophia", "hello") //_ states that you do not need to name the parameters in your function call


//## Control Flow

//if-else
let isActive = true
if isActive {
    print("This user is active")
} else {
    print("Activating user")
}

//switch
let i = 3

switch i {
case 1:
    print("Number was 1")
case 2:
    print("Number was 2")
case 3:
    print("Number was 3")
default:
    print("Number was whatever")
}


//with fallthrough
var index = 10

switch index {
case 100 :
    print( "Value of index is 100")
    fallthrough
case 10,15 :
    print( "Value of index is either 10 or 15")
    fallthrough
case 5 :
    print( "Value of index is 5")
default :
    print( "default case")
}



//## Arrays
//Declaring arrays
var someInts = [Int]() //Creating an new array object that stores ints
var numbers = [1, 2, 3]

//Adding elements
numbers += [4]
numbers.append(5)
print("Aaray count: \(numbers.count)") //Getting the number of elements

var secondArray = [String]()
secondArray.append("test")
secondArray += ["test2", "test3"]
print("Second Array count: \(secondArray.count)") //Getting the number of elements

//Removing elements
secondArray.remove(at:0)
print("Second Array count: \(secondArray.count)") //Getting the number of elements

//Sets - A collection of unique values
var someSet: Set<Int> = [1,2,3]

someSet.contains(3)
someSet.insert(5) // sets are not ordered, no need to specify where you are inserting
let removedElement = someSet.remove(3)

//compare Sets
let anotherSet: Set<Int> = [5,7,13]

let intersection = someSet.intersection(anotherSet)
let difference = someSet.symmetricDifference(anotherSet)
let union = someSet.union(anotherSet)



//## Closures




//3. Classes, including class declaration, protocols, outlets, properties, initializers, lazy properties and class methods

//Structs -  is a data type. used when we need more than 1 value to represent a object
struct Movie {
    let title: String
    var year: Int
}
var myMovie = Movie(title: "a new movie", year: 2019)
print("\(myMovie.title) is made in \(myMovie.year).")

myMovie.year = 2020
print("\(myMovie.title) is made in \(myMovie.year).")

//you can have struct contains structs
struct Song {
    let title: String
    let length: String
    let artist: Artist
}

struct Artist {
    let firstName: String
    let lastName: String
    var ago: Int
    let homeTown: String
}


struct Product {
    let name: String
    var price: Double
    
    mutating func discount() {
        price -= 0.1
    }
    
    var formattedPrice:String {
        return "$\(price)"
    }
}

//If you assign one struct to another, swift makes a copy of it

//protocols: define “rules” that an adopting class must conform to

protocol Edible
{
    func eat()
}

class Apple: Edible
{
    func eat()
    {
        print("Omnomnom! Eating the apple...")
    }
}

//## Classes


//## Instances




//## Loops

//Write a for loop with range operator
for _ in 0...4 {
    print("Hello!") //closed operator
}

for _ in 0..<5 {
    print("Hello again!")
}


//7. Conditionals



//8. Optional
var optionalMessage: String? //It may contain a String value or just nil
print(optionalMessage); //should print nil

optionalMessage = "123"
optionalMessage = "456"
print(optionalMessage);


//guard let will unwrap an optional for you, but if it finds nil inside it expects you to exit the function, loop, or condition you used it in.
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)!")
}

//Force unwrapping


//9. Dictionaries
//Initializing key-value paires var someDict = [KeyType: ValueType]()
var dict:[String: String] = [
    "Frog": "Kermit",
    "Pig": "Ms. Piggy",
    "Weirdo": "Gonzo"
]
dict["Weirdo"] = "Felipe"
dict["Frog"] = nil // delete frog

//Iterating over a dict (count and isEmpty works)
for (type, muppet) in dict {
    print("type: \(type), muppet: \(muppet)")
}

dict.count
dict.isEmpty

//convert back to array
let dictKeys = [String](dict.keys)
let dictValues = [String](dict.values)

var someDict = [Int: String]()
var someDict2:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

//Create Dictionary out of Arrays
var cities = ["Delhi","Bangalore","Hyderabad"]
var Distance = [2000,10, 620]
var cityDistanceDict = Dictionary(uniqueKeysWithValues: zip(cities, Distance))

var removedValue = cityDistanceDict.removeValue(forKey: "Delhi")
print(cityDistanceDict)

//Retrive value
cityDistanceDict["Bangalore"]


//filtering, grouping https://www.tutorialspoint.com/swift/swift_dictionaries.htm




//## Closure - a veriable holds code


import Foundation
//12. Guard & Defer
//let str = "£££"
let str = "fgdjhfkjad(1)"
let invalidAsciiChars = "^[\\x20-\\x7E]+$"
str ~= invalidAsciiChars
str.range(of: invalidAsciiChars, options: .regularExpression)
//guard str.range(of: invalidAsciiChars, options: .regularExpression) != nil else {
//    print("No address to submit")
//}

//14. Tuples -  can easily group a set of values together
var origin = (x: 0, y: 0)

var point = origin
point.x = 3
point.y = 5

print(origin) // (0, 0)
print(point) // (3, 5)

//You can use tuples to initialize more than one variable on a single line:
var (a, b, c) = (1, 2, 3)
print(a)


//15. Error Handling
//throwing errors and catching them with do-try-catch



//16. enum
enum ClassesType: Int {
    case iOS = 1
    case android = 2
}
var type = ClassesType.iOS
print("ios class type \(type)")

enum Finger:Int {
    case thumb = 1, index, middle, ring, pinky
}

var finger = Finger.thumb.rawValue
print("finger type \(finger)")


enum names {
    case Swift
    case Closures
}

var lang = names.Closures
lang = .Closures

switch lang {
    
case .Swift:
    print("Welcome to Swift")
case .Closures:
    print("Welcome to Closures")
}


enum Student {
    case Name(String)
    case Mark(Int,Int,Int)
}
var studDetails = Student.Name("Swift")
var studMarks = Student.Mark(98,97,95)
switch studMarks {
case .Name(let studName):
    print("Student name is: \(studName).")
case .Mark(let Mark1, let Mark2, let Mark3):
    print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
}




var optionalDouble:Double? = nil
optionalDouble = 1.0
if let definiteDouble = optionalDouble {
    definiteDouble
}



var personOne = "Ray"
var personTwo = "Brian"
var combinedString = "\(personOne): Hello, \(personTwo)!"
var tipString = "2499"
var tipInt = Int(tipString)

tipString = "24.99"
var tipDouble = Double(tipString)

var person1 = "Ray"
var person2 = "Brian"
var array:[String] = [person1, person2]
array.append("Waldo")
for person in array {
    print("person: \(person)")
}
var waldo = array[2]



