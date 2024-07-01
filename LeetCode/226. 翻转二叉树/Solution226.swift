//
//  Solution226.swift
//  LeetCode
//
//  Created by fate on 2024/7/1.
//

import Foundation

extension Solution {
    
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        
        invertTreeNode(root)
        return root
    }
    
    
    fileprivate func invertTreeNode(_ root: TreeNode?) {
        
        if root == nil {
            return
        }
        
        if root?.left != nil {
            invertTreeNode(root?.left)
        }
        
        if root?.right != nil {
            invertTreeNode(root?.right)
        }
        
        let tempNode = root?.left
        root?.left = root?.right
        root?.right = tempNode
    }
    
}
