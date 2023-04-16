//
//  maximumSubarray.swift
//  InOrder
//
//  Created by Luma Gabino on 09/06/22.
//
//  https://leetcode.com/problems/maximum-subarray/

import Foundation

class MaximumSubarray {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum: Int = Int.min
        var currentSum: Int = 0
        
        for num in nums {
            currentSum = max(num, currentSum+num)
            maxSum = max(currentSum, maxSum)
        }
        
        return maxSum
    }
}
