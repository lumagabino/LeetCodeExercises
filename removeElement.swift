//
//  removeElement.swift
//  InOrder
//
//  Created by Luma Gabino on 02/06/22.
//
//  https://leetcode.com/problems/remove-element/

import Foundation

class RemoveElement {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.isEmpty { return 0 }

        var index = 0
        var currentIndex = 0
        
        while index < nums.count {
            let num = nums[index]
            if val != num {
                nums[currentIndex] = num
                currentIndex += 1
            }
            
            index += 1
        }
        
        return currentIndex
    }
}
