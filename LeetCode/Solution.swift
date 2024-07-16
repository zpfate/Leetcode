//
//  Solution.swift
//  LeetCode
//
//  Created by fate on 2024/5/6.
//

import Foundation


class Solution {
    
}


/**
 Class  Node
 */
public class TreeNode {
    
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


/**
 并查集
 */
public class UnionFind {
    
    private var parents: [Int]
    
    init(_ size: Int) {
        self.parents = Array<Int>(0..<size)
    }
    
    func union(x: Int, y: Int) -> Void {
        
        let rootX = find(node: x)
        let rootY = find(node: y)
        parents[rootX] = rootY
        
    }
    
    func find(node: Int) -> Int {
        
        if node != parents[node] {
            parents[node] = find(node: parents[node])
        }
        
        return parents[node]
    }
    
}
