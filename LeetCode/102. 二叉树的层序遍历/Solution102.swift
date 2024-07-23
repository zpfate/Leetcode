//
//  Solution102.swift
//  LeetCode
//
//  Created by fate on 2024/7/23.
//

import Foundation

/**
 102. 二叉树的层序遍历
 https://leetcode.cn/problems/binary-tree-level-order-traversal/description/
 
 给你二叉树的根节点 root ，返回其节点值的 层序遍历 。 （即逐层地，从左到右访问所有节点）。
 */
extension Solution {
    
    // BFS
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        
        if root == nil {
            return []
        }
        
        var result = [[Int]]()
        var queque = [TreeNode]()
        queque.append(root!)
        
        while !queque.isEmpty {
            
            var temp = [Int]()
            for _ in 0..<queque.count {
                let node = queque.removeFirst()
                temp.append(node.val)
                if node.left != nil {
                    queque.append(node.left!)
                }
                if node.right != nil {
                    queque.append(node.right!)
                }
            }
            result.append(temp)
        }
        
        return result
    }
}
