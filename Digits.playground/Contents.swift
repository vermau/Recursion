/*
 Mark: Created by Ujjwal Verma
 Dated: Oct 08, 2017
 
 :Prints the individual digits in a number
 */

import Foundation

// Mark: Prints the individual digits in normal order
func digits(in num: Int) -> [Int] {
    if num < 10 {
        return [num]
    } else {
        let initialDigits = digits(in: num / 10)
        let lastDigit = num % 10
        return initialDigits + [lastDigit]
    }
}

print(digits(in: 834))

// Mark: Prints the individual digits in reverse order
func digitsReversed(in num: Int) -> [Int] {
    if num < 10 {
        return [num]
    } else {
        let lastDigit = [num % 10]
        print(lastDigit)
        let initialDigits = digitsReversed(in: num / 10)
        return lastDigit + initialDigits
    }
}

print(digitsReversed(in: 281))

