// Print Function
print("Hello to Swift")

// ---------------------------------------------------------------------------------------

// Variable and Constants

// using var keyword to create a variable you can re-assign values to it
var greeting = "Hello, playground";

greeting = "Welcom developers";

print(greeting)

let name = "Kishore Kumar";

//name = "Kishore"; -> is not allowed and throws error

// ---------------------------------------------------------------------------------------

// Operators and Expressions

let number1 = 12;
let number2 = 2;

// Expressions

let sum = number1 + number2;
let product = number1 * number2;
let differents = number1 - number2;
let quotient = number1 / number2;
let remainder = number1 % number2;

// Comparision Operators

let isEqual = number1 == number2;
let isNotEqual = number1 != number2;
let isGreater = number1 > number2;
let isLessthan = number1 < number2;
let isGreaterOrEqual = number1 >= number2;
let isLessthanOrEqual = number1 <= number2;

// Logic Operators

let hasAdmin = true;
let isAdmin = false;

let AND = hasAdmin && isAdmin;
let OR = hasAdmin || isAdmin;
let NOT = !isAdmin;

// Compound Assignment Operators;

var count = 5

count += 1;
count -= 1;
count *= 2;
count /= 2;
count %= 2;

// Ternary Operator

let isAllowed = isAdmin ? "YES" : "NO";

// ---------------------------------------------------------------------------------------

// Strings and Strings Interpolation

// -> Strings are immutable

// Conctenation

var language = "Swift";

let greetings = "Hello " + language + " !"

language.append(" Language");

let age = 25;
let height = 5.1;


let userInfo = "My name is \(name). My height is \(height) and age is \(age)"

// ---------------------------------------------------------------------------------------

// Conditional Statements

if(number1 == 0){
    print("Number Zero")
}else if(number1 % 2 == 0){
    print("Even Number")
}else{
    print("Odd Number")
}

// ---------------------------------------------------------------------------------------

// Switch Statements

let dayOfWeek = 7;

switch dayOfWeek {
case 1:
    print("Monday")
case 2:
    print("Tuesday")
case 3:
    print("Wenesday")
case 4:
    print("Thuesday")
case 5:
    print("Friday")
case 6, 7:
    print("Weekend")
default:
    print("Invaild Day")
}


// Range in Condition

let score = 29;

switch score{
case 1...29:
    print("Fail")
case 30...100:
    print("Pass");
default:
    print("Invaild score")
}


// ---------------------------------------------------------------------------------------

// For in Loop

let fruits = ["apple", "banana", "cherry"];

for fruit in fruits{
    print(fruit)
}

// ---------------------------------------------------------------------------------------


// While Loop
var counter = 0;
let limit = 6;

while count <= limit {
    print("Counter : \(count)");
    count += 1
}

// ---------------------------------------------------------------------------------------

// Repeat While
// Swift’s repeat while and JavaScript’s do...while loops are conceptually the same
repeat {
    print("Counter : \(count)");
    count += 1
} while count <= limit + limit


// Continue and Break
for num in 1...10{
    if(num == 3){
        continue
    }
    if(num == 6){
        break
    }
    print("For Counter : \(num)")
}

// ---------------------------------------------------------------------------------------

// Defining and Using Functions
func greet() -> Void{
    print("Welcome \(name)")
}

func greetWithNameAndAge(name : String, age : Int = 0) -> String{
    return "Welcome \(name) who's age is \(age)"
}

greet()

let functionReturnValue = greetWithNameAndAge(name: name, age: age)

// firstNumber and secondNumber are Argument Labels
func addTwoValues(firstNumber number1 : Int, secondNumber number2 : Int = 3) -> String {
    return String(number1 + number2)
}

let sumOfTwoNumber = addTwoValues(firstNumber: number1, secondNumber: number2)

// By default, Swift enforces external parameter names for clarity.
// To call it without parameter labels
func greetWithNameAndAge(_ name: String, _ age: Int) -> String {
    return "Welcome \(name) who's age is \(age)"
}
greetWithNameAndAge("Alice", 25)

// ---------------------------------------------------------------------------------------

// Closures

let add : (Int, Int) -> Int = {(a : Int, b : Int) in return a + b}
add(3, 3)


let multiple : (Int, Int) -> Int = {$0 * $1}
multiple(3,3)

// Trailing Closures Syntax

func performAction(action : () -> Void){
    action()
}

performAction{
    print("Action was performed")
}


// Capturing values in Closures

func makeIncrement(incrementAmmount : Int) -> () -> Int {
    var total = 0;
    // this is the 'Closures'
    return {
        total += incrementAmmount
        return total
    }
}


let callFunc = makeIncrement(incrementAmmount: 10);

callFunc(); // 10
callFunc(); // 20


// ---------------------------------------------------------------------------------------

// Optionals
let object : String? = "Car"

print(object ?? "Empty") // Unwrap Optionals

class Person {
    var name : String
    var age : Int?
    var address : Address?
    
    init(name: String, age: Int? = nil, address : Address? = nil) {
        self.name = name
        self.age = age
        self.address = address;
    }
}

let person: Person? = Person(name: "Kishore Kumar", age: nil, address: nil)

// this
if let age = person?.age {
    print(age)
}

// or
let personAge = person?.age ?? 18


// Optional Chaining
class Address {
    var street : String
    var city : String
    
    init(street: String, city: String) {
        self.street = street
        self.city = city
    }
}

let personWithAddress = Person(name: "Gayathri", age: 25, address: Address(street: "Anna Street", city: "TUP"))

if let city = person?.address?.city {
    print(city)
}

if let city = personWithAddress.address?.city {
    print(city)
}


// Force Un-warpping
var fName : String? = "Kishore";

print(fName!)

