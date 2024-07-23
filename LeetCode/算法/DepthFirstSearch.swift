//
//  DepthFirstSearch.swift
//  LeetCode
//
//  Created by fate on 2024/7/22.
//

import Foundation


class TreeDepthFirstSearch {

    func dfs(node: TreeNode?) -> Void {
        
        if node == nil {
            return
        }
        
        /// doSomething(node) 这里需要处理一些具体的事情

        dfs(node: node?.left)
        dfs(node: node?.right)
    }
}

class CommonDepthFirstSearch {
    
    
    class Point {
        let num: Int
        let value: Int
        
        init(num: Int, value: Int) {
            self.num = num
            self.value = value
        }
    }
    
    
    
//    func depthFirstSerach(graph: Graph) -> <#return type#> {
//        <#function body#>
//    }

    func dfs(node: TreeNode?) -> Void {
        
        if node == nil {
            return
        }
        
        /// doSomething(node) 这里需要处理一些具体的事情

        dfs(node: node?.left)
        dfs(node: node?.right)
    }
}
