//
//  validParenthesis.swift
//  InOrder
//
//  Created by Luma Gabino on 02/06/22.
//
//  https://leetcode.com/problems/valid-parentheses/

import Foundation

/// Inputs:
// "()"
// "()[]{}"
// "(]"
// "[(])"
// "["
// "]"
class ValidParenthesis {
    func isValid(_ s: String) -> Bool {
        let s = Array(s)
        var openClose: [Character] = []
        
        for char in s {
            if char == "(" || char == "{" || char == "[" {
                openClose.append(char)
            } else {
                guard let last = openClose.popLast() else { return false }
                
                if char == ")" && last != "(" {
                    return false
                } else if char == "}" && last != "{" {
                    return false
                } else if char == "]" && last != "[" {
                    return false
                }
            }
        }
        
        return openClose.isEmpty ? true : false
    }
}
