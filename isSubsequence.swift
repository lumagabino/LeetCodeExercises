//
//  isSubsequence.swift
//  InOrder
//
//  Created by Luma Gabino on 26/06/22.
//

import Foundation

class IsSubsequence {
    //Accepted
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let sArray = Array(s)
        let sSize = s.count
        var sIndex = 0
        let tArray = Array(t)

        for letter in tArray {
            if sIndex < sSize {
                if sArray[sIndex] == letter {
                    sIndex += 1
                }
            }
        }

        return sIndex == sSize ? true : false
    }
    
    //Accepted
    func isSubsequenceDP(_ s: String, _ t: String) -> Bool {
        let sArray = Array(s)
        let sSize = s.count
        let tArray = Array(t)
        let tSize = t.count
        var subsequenceMatrix = [[Int]](repeating: [Int](repeating: 0, count: tSize+1), count: sSize+1)
        
        if sSize == 0 { return true }
        if tSize == 0 { return false }
        
        for sIndex in 1...sSize {
            for tIndex in 1...tSize {
                let sLetter = sArray[sIndex-1]
                let tLetter = tArray[tIndex-1]
                
                if sLetter == tLetter {
                    subsequenceMatrix[sIndex][tIndex] = subsequenceMatrix[sIndex-1][tIndex-1] + 1
                } else {
                    subsequenceMatrix[sIndex][tIndex] = max(subsequenceMatrix[sIndex-1][tIndex], subsequenceMatrix[sIndex][tIndex-1])
                }
            }
        }
    
        let subsequenceSize = subsequenceMatrix[sSize][tSize]
        print(subsequenceSize)
        return subsequenceSize==sSize ? true : false
    }
    
    //Time Limit Exceeded
    func isSubsequenceR(_ s: String, _ t: String) -> Bool {
        let s = Array(s)
        let t = Array(t)
        
        print(s.count)
        print(t.count)
        
        let longestSubsequence = LCS(s, t, 0, 0)
        print(longestSubsequence)
        return longestSubsequence==s.count ? true : false
    }
    
    func LCS(_ s: [Character], _ t: [Character], _ sIndex: Int, _ tIndex: Int) -> Int {
        print(tIndex)
        if sIndex == s.count || tIndex == t.count {
            return 0
        } else if s[sIndex] == t[tIndex] {
            return 1+LCS(s, t, sIndex+1, tIndex+1)
        } else {
            return max(LCS(s, t, sIndex+1, tIndex),
                       LCS(s, t, sIndex, tIndex+1))
        }
    }
}
