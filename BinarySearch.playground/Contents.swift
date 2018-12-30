/*
 Mark: Created by Ujjwal Verma
 Dated: Oct 09, 2017
 */

import Foundation

func binarySearch(_ key: Int, _ numbers: [Int], leftIndex left: Int = 0, rightIndex right: Int = 1) -> Bool {
    var right = right
    
    if right == 1 { right = numbers.count - 1 }
    
    if left < right {
        let middle = (left + right) / 2
        
        if key < numbers[middle] {
            return binarySearch(key, numbers, leftIndex: left, rightIndex: middle)
        } else if key > numbers[middle] {
            return binarySearch(key, numbers, leftIndex: middle + 1, rightIndex: right)
        } else { // :if key == numbers[middle]
            return true
        }
    } else {
        return numbers[left] == key
    }
}

print(binarySearch(4, [1,2,4,6,7]))
