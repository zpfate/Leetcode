//
//  Solution145.swift
//  LeetCode
//
//  Created by fate on 2024/7/22.
//

import Foundation

extension Solution {
    
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        
        if root == nil {
            return []
        }
        
        var result = [Int]()
        result += postorderTraversal(root?.left)
        result += postorderTraversal(root?.right)
        result.append(root?.val ?? 0)
        return result
    }
    
    func postorderTraversalII(_ root: TreeNode?) -> [Int] {
        
        if root == nil {
            return []
        }
        
        var result = [Int]()
        result += postorderTraversal(root?.left)
        result += postorderTraversal(root?.right)
        result.append(root?.val ?? 0)
        return result
    }
    
}
