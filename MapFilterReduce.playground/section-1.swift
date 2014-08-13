// Examples from http://www.electricpeelsoftware.com/2014/08/12/map-filter-reduce.html

import Foundation

let numbers = [ 10000, 10303, 30913, 50000, 100000, 101039, 1000000 ]

// Map
let formattedNumbers = numbers.map { NSNumberFormatter.localizedStringFromNumber($0, numberStyle: .DecimalStyle) }
formattedNumbers

// Filter
let evenNumbers = numbers.filter { $0 % 2 == 0 }
evenNumbers

// Reduce
let total = numbers.reduce(0) { $0 + $1 }
total

// Chaining
let evenNumbersAsString = numbers
    .filter { $0 % 2 == 0 }
    .map { NSNumberFormatter.localizedStringFromNumber($0, numberStyle: .DecimalStyle) }
    .reduce("") { countElements($0) == 0 ? $1 : $0 + "\n" + $1 }
evenNumbersAsString
