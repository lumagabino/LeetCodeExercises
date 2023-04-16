//
//  addTwoNumbers.swift
//  InOrder
//
//  Created by Luma Gabino on 09/06/22.
//
//  https://leetcode.com/problems/add-two-numbers/

import Foundation

class AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let listHead: ListNode? = ListNode()
        var currentNode = listHead
        var result = 0
        var rest = 0
        var l1 = l1
        var l2 = l2

        while l1 != nil || l2 != nil {
            if let val1 = l1?.val, let val2 = l2?.val {
                (result, rest) = sum(val1, val2, rest)
                l1 = l1?.next
                l2 = l2?.next
            } else if let val1 = l1?.val {
                (result, rest) = sum(val1, 0, rest)
                l1 = l1?.next
            } else if let val2 = l2?.val {
                (result, rest) = sum(0, val2, rest)
                l2 = l2?.next
            }
            
            currentNode?.val = result
            if l1 != nil || l2 != nil {
                currentNode?.next = ListNode()
                currentNode = currentNode?.next
            }
        }
        
        if rest != 0 {
            currentNode?.next = ListNode(rest, nil)
        }
        
        return listHead
    }

    func sum(_ n1: Int, _ n2: Int, _ previousRest: Int) -> (Int, Int) {
        let sum = n1+n2+previousRest
        
        if sum >= 10 {
            return (sum-10, 1)
        } else {
            return (sum, 0)
        }
    }
}
