/*
 Mark: Created by Ujjwal Verma
 Dated: Oct 09, 2017
 
 :Prints the number times power
 */


import Foundation

func power(_ num: Int, pow p: Int) -> Int {
    if p == 0 {
        return 1
    } else {
        return num * power(num, pow: (p - 1))
    }
}

print(power(3, pow: 3))

