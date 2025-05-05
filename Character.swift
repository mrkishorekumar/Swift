// Data Types: Int, Double, String, Bool, Character
import Foundation

// Initializers (Constructors)
let ch1: Character = "A"                  // From a character literal
let ch2 = Character("💖")                // From a String of one character
let ch3 = Character(UnicodeScalar(65))  // From a Unicode scalar (optional)

let scalar: UnicodeScalar = "é"
let ch4 = Character(scalar)              // From UnicodeScalar


// Static Properties
Character("\0")

// Instance Properties
let ch: Character = "é"

ch.unicodeScalars         // Collection of Unicode scalars
ch.isASCII                // True if in ASCII
ch.isLetter               // True if letter
ch.isNumber               // True if number
ch.isWhitespace           // True if space or tab
ch.isNewline              // True if newline character


// Methods

ch == "A"
ch < "Z"          // Lexicographical comparison


// Type Conversions
let s = String(ch)              // Convert Character to String
let arr = Array("Hello")        // [Character]


// Looping Over Characters in a String
for ch in "Hello" {
    print(ch)
}

// Character Count in String
"👩‍👩‍👧‍👧".count    // 1 Character (even if multiple scalars)
