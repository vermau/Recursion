import Foundation

/*
 Mark: Created by Ujjwal Verma
 Dated: Oct 08, 2017
 
 :Prints upto n number of terms in the Fibonacci series
 */
func fibonacci(terms num: Int) -> [Int] {
    var res = 0
    var fibonacciArray = [Int]()
    
    func calculateFibonacci(_ number: Int) -> Int {
        if number <= 0 {
            res = 0
        } else if number < 2 {
            res = number
        } else {
            print("Number: \(number) -> \(calculateFibonacci(number - 1)) and \(calculateFibonacci(number - 2))")
            // :Making a recursive call to calculateFibonacci(Int)
            res = calculateFibonacci(number - 1) + calculateFibonacci(number - 2)
        }
        return res
    }
    
    for cnt in 1 ... num {
        res = calculateFibonacci(cnt)
        fibonacciArray.append(res)
    }
    return fibonacciArray
}

print(fibonacci(terms: 4))

func fibonacci2(terms num: Int) -> [Int] {
    var res = 0
    var fibonacciArray = [Int]()
    
    func calculateFibonacci(_ number: Int) -> Int {
        if number <= 0 {
            res = 0
        } else if number < 2 {
            res = number
        } else {
            print("Number: \(number) -> \(calculateFibonacci(number - 1)) and \(calculateFibonacci(number - 2))")
            // :Making a recursive call to calculateFibonacci(Int)
            res = calculateFibonacci(number - 1) + calculateFibonacci(number - 2)
        }
        return res
    }
    
    for cnt in 1 ... num {
        res = calculateFibonacci(cnt)
        fibonacciArray.append(res)
    }
    return fibonacciArray
}

print(fibonacci(terms: 4))
