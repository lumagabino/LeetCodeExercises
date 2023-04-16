//
//  sortArrayByParity.swift
//  InOrder
//
//  Created by Luma Gabino on 02/06/22.
//
//  https://leetcode.com/problems/sort-array-by-parity/

import Foundation

class SortArrayByParity {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var evens = [Int]()
        var odds = [Int]()
        
        for num in nums {
            if isEven(num: num) {
                evens.append(num)
            } else {
                odds.append(num)
            }
        }
        
        for odd in odds {
            evens.append(odd)
        }
        
        return evens
    }
    
    func isEven(num: Int) -> Bool {
        if num % 2 == 0 {
            return true
        }
        return false
    }
}

