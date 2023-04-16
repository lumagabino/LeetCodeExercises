//
//  longestCommonPrefix.swift
//  InOrder
//
//  Created by Luma Gabino on 02/06/22.
//
//  https://leetcode.com/problems/longest-common-prefix/

import Foundation

class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        var prefix = strs[0]
        
        for wordIndex in 1..<strs.count {
            let word = strs[wordIndex]
            prefix = getCommonPrefix(prefix, word)
        }
        
        return prefix
    }
    
    func getCommonPrefix(_ str1: String, _ str2: String) -> String {
        var prefix: [Character] = []
        let size = str1.count > str2.count ? str2.count : str1.count
        let str1 = Array(str1)
        let str2 = Array(str2)
        
        for letterIndex in 0..<size {
            let letter1 = str1[letterIndex]
            let letter2 = str2[letterIndex]
            
            if letter1 == letter2 {
                prefix.append(letter1)
            } else {
                return String(prefix)
            }
        }
        
        return String(prefix)
     }
}
