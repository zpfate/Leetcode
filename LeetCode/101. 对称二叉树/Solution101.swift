//
//  Solution101.swift
//  LeetCode
//
//  Created by fate on 2024/7/2.
//

import Foundation

/**
 101. 对称二叉树
 https://leetcode.cn/problems/symmetric-tree/description/
 
 给你一个二叉树的根节点 root ， 检查它是否轴对称。
 */
extension Solution {
    
    func isSymmetric(_ root: TreeNode?) -> Bool {
        
        if root == nil {
            return true
        }
        
        return isSymmetricTree(root?.left, root?.right)
    }
    
    private func isSymmetricTree(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        
        let isEqual = left?.val == right?.val

        if left != nil && right != nil {
            
            return isEqual && isSymmetricTree(left?.left, right?.right) && isSymmetricTree(left?.right, right?.left)
        }
        return isEqual
    }
}
