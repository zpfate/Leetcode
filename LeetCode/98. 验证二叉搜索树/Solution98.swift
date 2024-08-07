//
//  Solution98.swift
//  LeetCode
//
//  Created by fate on 2024/8/6.
//

import Foundation

/**
 98. 验证二叉搜索树
 https://leetcode.cn/problems/validate-binary-search-tree/
 
 给你一个二叉树的根节点 root ，判断其是否是一个有效的二叉搜索树。

 有效 二叉搜索树定义如下：

 节点的左
 子树
 只包含 小于 当前节点的数。
 节点的右子树只包含 大于 当前节点的数。
 所有左子树和右子树自身必须也是二叉搜索树。
 */

extension Solution {
    
    func isValidBST(_ root: TreeNode?) -> Bool {

        return helper(root, lower: Int.min, upper: Int.max)
    }
    
    fileprivate func helper(_ node: TreeNode?, lower: Int, upper: Int) -> Bool {
        
        if node == nil {
            return true
        }
        
        if node!.val <= lower || node!.val >= upper {
            return false
        }
        
        return helper(node?.left, lower: lower, upper: node!.val) && helper(node?.right, lower: node!.val, upper: upper)
    }
}
