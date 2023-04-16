//
//  palindromeNumber.swift
//  InOrder
//
//  Created by Luma Gabino on 02/06/22.
//
//  https://leetcode.com/problems/palindrome-number/

import Foundation

class PalindromeNumber {
    func isPalindrome(_ x: Int) -> Bool {
        let str = String(x)
        let digits = Array(str)
        let size = digits.count-1
        let halfSize = size/2
        
        for index in 0...halfSize {
            if digits[index] != digits[size-index] {
                return false
            }
        }
        return true
    }
}
