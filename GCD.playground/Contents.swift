/*
 Mark: Created by Ujjwal Verma
 Dated: Oct 09, 2017
 */

import Foundation

// :Calculates GCD using Euclidian algorithm
func gcd(_ num1: Int, _ num2: Int) -> Int {
    if num1 == num2 {
        return num1
    } else {
        let bigNum = max(num1, num2)
        let smallNum = min(num1, num2)
        
        return gcd((bigNum - smallNum), smallNum)
    }
}

print("GCD is: \(gcd(1224, 18))")
