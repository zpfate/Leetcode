//
//  Solution2181.swift
//  LeetCode
//
//  Created by fate on 2024/9/9.
//

import Foundation

/**
 2181. 合并零之间的节点
 https://leetcode.cn/problems/merge-nodes-in-between-zeros/description/
 
 给你一个链表的头节点 head ，该链表包含由 0 分隔开的一连串整数。链表的 开端 和 末尾 的节点都满足 Node.val == 0 。
 对于每两个相邻的 0 ，请你将它们之间的所有节点合并成一个节点，其值是所有已合并节点的值之和。然后将所有 0 移除，修改后的链表不应该含有任何 0 。
  返回修改后链表的头节点 head 。
 */
extension Solution {
    
    func mergeNodes(_ head: ListNode?) -> ListNode? {
        
        if head == nil {
            return nil
        }
        
    
        var resNode = ListNode(0)
        var dummyNode = resNode
        
        var current = head?.next
        while current != nil {
            
            if (current!.val == 0 && current!.next != nil) {
                resNode.next = ListNode(0)
                resNode = resNode.next!
            } else {
                resNode.val += current!.val
            }
            current = current!.next
        }
        
        return dummyNode
    }
}
