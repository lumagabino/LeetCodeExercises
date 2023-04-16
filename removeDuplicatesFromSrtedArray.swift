//
//  removeDuplicatesFromSrtedArray.swift
//  InOrder
//
//  Created by Luma Gabino on 02/06/22.
//
//  https://leetcode.com/problems/remove-duplicates-from-sorted-array/

import Foundation

class RemoveDuplicatesFromSrtedArray {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }

        var index = 1
        var currentIndex = 0
        
        while index < nums.count {
            let num = nums[index]
            if nums[currentIndex] != num {
                nums[currentIndex+1] = num
                currentIndex += 1
            }
            
            index += 1
        }
        
        return currentIndex+1
    }
}
