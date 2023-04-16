//
//  twoSum.swift
//  InOrder
//
//  Created by Luma Gabino on 26/06/22.
//

import Foundation

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        guard let arrayMin = nums.min() else { return [] }
        var minValue = min(arrayMin, target)
        minValue = minValue < 0 ? -minValue : minValue
        
        guard let arrayMax = nums.max() else { return [] }
        let maxValue = max(arrayMax, target)
        
        let diff = maxValue + minValue
        
        var indexOfVisited = [Int?](repeating: nil, count: diff+1)
        
        let nums = nums.map { num in
            return num+diff
        }
        
        let target = target+diff
        
        for index in 0..<nums.count {
            let num = nums[index]
            let remaining = target - num

            if remaining >= 0, remaining <= maxValue, let remainingIndex = indexOfVisited[remaining] {
                return [remainingIndex, index]
            } else {
                indexOfVisited[num] = index
            }
        }
        
        return []
    }

//
//    print(twoSum([-1,-2,-3,-4,-5], -8))
}

