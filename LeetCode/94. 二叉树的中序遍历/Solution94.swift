//
//  Solution94.swift
//  LeetCode
//
//  Created by fate on 2024/7/22.
//

import Foundation

/**
 94. 二叉树的中序遍历
 https://leetcode.cn/problems/binary-tree-inorder-traversal/description/
 
 给定一个二叉树的根节点 root ，返回 它的 中序 遍历 。
 */


extension Solution {
    
    // 左根右
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        
        if root == nil {
            return []
        }
        
        var result = [Int]()
        result += inorderTraversal(root?.left)
        result.append(root?.val ?? 0)
        result += inorderTraversal(root?.right)
        
        return result
    }
    
    
    func inorderTraversalII(_ root: TreeNode?) -> [Int] {
        
        if root == nil {
            return []
        }
        
        var result = [Int]()
        var stack = [TreeNode]()
        var node = root
        
        while !stack.isEmpty || node != nil {
            
            while node != nil {
                
                stack.append(node!)
                node = node?.left
            }
            
            node = stack.popLast()
            result.append(node!.val)
            node = node?.right
        }
        
        return result
    }
}
