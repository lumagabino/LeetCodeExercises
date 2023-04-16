//
//  searchInsertPosition.swift
//  InOrder
//
//  Created by Luma Gabino on 02/06/22.
//
//  https://leetcode.com/problems/search-insert-position/

import Foundation

class SearchInsertPosition {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for index in 0..<nums.count {
            let num = nums[index]
            if num >= target {
                return index
            }
        }
        return nums.count
    }
}
