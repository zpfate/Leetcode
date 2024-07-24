//
//  Solution104.swift
//  LeetCode
//
//  Created by fate on 2024/7/1.
//

import Foundation

/**
 104. 二叉树的最大深度
 https://leetcode.cn/problems/maximum-depth-of-binary-tree/description/
 
 给定一个二叉树 root ，返回其最大深度。

 二叉树的 最大深度 是指从根节点到最远叶子节点的最长路径上的节点数。
 */
extension Solution {
    
    func maxDepth(_ root: TreeNode?) -> Int {
        
        return dfsBinaryTreeDepth(root)
    }
    
    fileprivate func dfsBinaryTreeDepth(_ root: TreeNode?) -> Int {
        
        if root == nil {
            return 0
        }
        
        let leftDepth = dfsBinaryTreeDepth(root?.left)
        let rightDepth = dfsBinaryTreeDepth(root?.right)
        return 1 + max(leftDepth, rightDepth)
    }
    
    fileprivate func bfsBinaryTreeDepth(_ root: TreeNode?) -> Int {
        
        if root == nil {
            return 0
        }
        
        var queue = [TreeNode]()
        var ans = 0
        queue.append(root!)
        
        while !queue.isEmpty {
            
            for _ in 0..<queue.count {
                let node = queue.removeFirst()
                if node.left != nil {
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
            }
            ans += 1
        }
        return ans
    }
}
