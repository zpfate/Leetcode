//
//  Solution.swift
//  LeetCode
//
//  Created by fate on 2024/7/19.
//

import Foundation


/**
 144. 二叉树的前序遍历
 https://leetcode.cn/problems/binary-tree-preorder-traversal/description/
 
 给你二叉树的根节点 root ，返回它节点值的 前序 遍历。
 */
extension Solution {
    
    
    /// 递归算法
    func preorderTraversal(_ root: TreeNode?) -> [Int] {

        if root == nil {
            return []
        }
        
        var result = [Int]()
        
        result.append(root?.val ?? 0)
        result += preorderTraversal(root?.left)
        result += preorderTraversal(root?.right)
        return result
    }
    
    
    /// 迭代算法
}
