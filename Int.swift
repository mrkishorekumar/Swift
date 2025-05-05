// Data Types: Int, Double, String, Bool, Character

let x = 7
let y = 2

// Initializers (Constructors)
let a = Int(23);                            // From another Int
let b = Int("123")                          // From a String (optional Int?)
let c = Int(3.14)                           // From a Double or Float (truncates)

// Static Properties
Int.min         // Minimum representable value
Int.max         // Maximum representable value
Int.bitWidth    // Number of bits used (e.g., 64)
Int.zero        // Equivalent to 0

// Randomization (Swift Standard Library)
Int.random(in: 1...100)


// String Conversion
String(123)     // Convert Int to String
Int("123")      // Convert String to optional Int


// Miscellaneous
x.isMultiple(of: 2)     // return bool if the number is Multiple of given number
x.distance(to: y)       // return Difference between x and y
x.advanced(by: 5)       // x + 5
