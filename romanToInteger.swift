//
//  romanToInteger.swift
//  InOrder
//
//  Created by Luma Gabino on 02/06/22.
//
//  https://leetcode.com/problems/roman-to-integer/

import Foundation

class RomanToInteger {
    
    func romanToInt(_ s: String) -> Int {
        if s.isEmpty { return 0 }
        let s = Array(s)
        var previousValue = getIntValue(from: s[0])
        var sum = previousValue
        
        for index in 1..<s.count {
            let roman = s[index]
            let romanValue = getIntValue(from: roman)
        
            if previousValue < romanValue {
                sum = sum - (2*previousValue) + romanValue
            } else {
                sum += romanValue
            }
    
            //update previous
            previousValue = romanValue
        }
        
        return sum
    }

    func getIntValue(from roman: Character) -> Int {
        switch roman {
            case "I":
                return 1
            case "V":
                return 5
            case "X":
                return 10
            case "L":
                return 50
            case "C":
                return 100
            case "D":
                return 500
            case "M":
                return 1000
            default:
                return 0
        }
    }
}
