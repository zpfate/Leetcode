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
        
        if root == nil {
            return 0
        }
        
        if root?.left == nil && root?.right == nil {
            return 1
        }
        
        var result = Int.max
        
        if root?.left != nil {
            result = min(result, minDepth(root?.left))
        }
        if root?.right != nil {
            result = min(result, minDepth(root?.right))
        }
        return result + 1
        
    }
}
