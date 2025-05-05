// Data Types: Int, Double, String, Bool, Character
import Foundation

// Initializers (Constructors)
let s1 = String("String");                      // From a String literal
let s2 = String(123);                           // From an Int
let s3 = String(3.14);                          // From a Double
let s4 = String(repeating: "K", count: 5)       // "KKKKK"
let s5 = String(UnicodeScalar(65));             // "A"

// Static Properties
String()            // Empty string initializer
String.init()       // Same as above

// Instance Properties
let str = "kishore";

str.isEmpty;                // true if the string is empty
str.count;                  // Number of characters
str.startIndex              // First character index
str.endIndex                // One past the last index
str.unicodeScalars          // Unicode scalar view
str.utf8                    // UTF-8 view
str.utf16                   // UTF-16 view
str.lowercased()            // Lowercase version
str.uppercased()            // Uppercase version
str.capitalized             // Capitalizes words -> import Foundation

// Accessing Characters
let firstCharacter = str[str.startIndex]
let lastCharacter = str[str.index(before: str.endIndex)]
let range = str.index(str.startIndex, offsetBy: 2)..<str.index(str.startIndex, offsetBy: 5)
let substring = str[range]


// Modifying Strings
var s = "Hello"
s.append("!")
s.insert("X", at: s.index(s.startIndex, offsetBy: 2));
s.remove(at: s.index(s.startIndex, offsetBy: 2));           // return removed value
let newRange = s.index(str.startIndex, offsetBy: 1)..<s.index(str.startIndex, offsetBy: 2)
s.removeSubrange(newRange)
s.replaceSubrange(newRange, with: "abc")

// Searching & Matching

let greeting = "Hello World!"


greeting.contains("llo")
greeting.hasPrefix("He")
greeting.hasSuffix("d!")
greeting.firstIndex(of : "l");
greeting.ranges(of: "World")
greeting.replacingOccurrences(of: "l", with: "L")

// Splitting and Joining
print(greeting.split(separator: " "))           // Splits into array of substrings
print(greeting.components(separatedBy: " "))
["a", "b"].joined(separator: "")


// Formatting
let name = "Alice"
let age = 30
let formatted = "Name: \(name), Age: \(age)"

// Comparisons
str == "Hello"
str < "World"
"z".localizedCompare("c") == .orderedAscending

// Trimming and Whitespace
let email = "kishore@gmail.com  ";
email.trimmingCharacters(in: .whitespacesAndNewlines)


// Random String (Indirectly)
let letters = "abcdefghijklmnopqrstuvwxyz"
let randomString = String((0..<5).map { _ in letters.randomElement()! })
