//
//  mergeTwoSortedLists.swift
//  InOrder
//
//  Created by Luma Gabino on 02/06/22.
//
//  https://leetcode.com/problems/merge-two-sorted-lists/

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int = 0, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

class MergeTwoSortedLists {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var currentNode: ListNode? = ListNode()
        let head = currentNode
        var list1 = list1
        var list2 = list2
        
        while list1 != nil && list2 != nil {
            if let val1 = list1?.val, let val2 = list2?.val, val1<=val2 {
                currentNode?.next = list1
                list1 = list1?.next
            } else {
                currentNode!.next = list2
                list2 = list2?.next
            }
            
            currentNode = currentNode?.next
        }
        
        if list1 != nil {
            currentNode?.next = list1
        }
        
        if list2 != nil {
            currentNode?.next = list2
        }
        
        return head?.next
    }
}
