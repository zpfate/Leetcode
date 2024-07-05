//
//  Solution111.swift
//  LeetCode
//
//  Created by fate on 2024/7/2.
//


/**
 111. 二叉树的最小深度
 https://leetcode.cn/problems/minimum-depth-of-binary-tree/description/
 
 给定一个二叉树，找出其最小深度。

 最小深度是从根节点到最近叶子节点的最短路径上的节点数量。

 说明：叶子节点是指没有子节点的节点。
 */

import Foundation


extension Solution {
    
    func minDepth(_ root: TreeNode?) -> Int {
        
        return dfsBinaryTreeDepth(root)
    }
    
    fileprivate func dfsBinaryTreeDepth(_ root: TreeNode?) -> Int {
        
        if root?.left == nil && root?.right == nil {
            return 0
        }
        
        let leftDepth = dfsBinaryTreeDepth(root?.left)
        let rightDepth = dfsBinaryTreeDepth(root?.right)
        
        return 1 + min(leftDepth, rightDepth)
        
    }
}
