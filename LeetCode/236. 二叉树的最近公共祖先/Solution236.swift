//
//  Solution236.swift
//  LeetCode
//
//  Created by fate on 2024/8/6.
//

import Foundation
/**
 236. 二叉树的最近公共祖先
 https://leetcode.cn/problems/lowest-common-ancestor-of-a-binary-tree/description/
 
 给定一个二叉树, 找到该树中两个指定节点的最近公共祖先。

 百度百科中最近公共祖先的定义为：“对于有根树 T 的两个节点 p、q，最近公共祖先表示为一个节点 x，满足 x 是 p、q 的祖先且 x 的深度尽可能大（一个节点也可以是它自己的祖先）。”
 */

extension Solution {
    
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        
        
        if root === p || root === q {
            return root
        }
        
        
        let left = lowestCommonAncestor(root?.left, p, q)
        let right = lowestCommonAncestorII(root?.right, p, q)
        
        if left == nil {
            return right
        }
        
        if right == nil {
            return left
        }
        return root
    
    }
    
    func lowestCommonAncestorII(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        
        if root == nil {
            return nil
        }
        
        var node: TreeNode?
        let left = dfs(&node, root, p, q)
    
        return node
    }
    
    
    func dfs(_ node: inout TreeNode?, _ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        if root == nil {
            return false
        }
        
        let left = dfs(&node, root?.left, p, q)
        let right = dfs(&node, root?.right, p, q)
        
        if (left && right) || (root?.val == p?.val || root?.val == q?.val) && (left || right) {
            node = root
        }

        return left || right || root?.val == p?.val || root?.val == q?.val
    }
    
}
