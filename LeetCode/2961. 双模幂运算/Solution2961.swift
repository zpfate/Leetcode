//
//  Solution2961.swift
//  LeetCode
//
//  Created by fate on 2024/7/30.
//

import Foundation

/**
 2961. 双模幂运算
 https://leetcode.cn/problems/double-modular-exponentiation/
 
 给你一个下标从 0 开始的二维数组 variables ，其中 variables[i] = [ai, bi, ci, mi]，以及一个整数 target 。

 如果满足以下公式，则下标 i 是 好下标：

 0 <= i < variables.length
 ((aibi % 10)ci) % mi == target
 返回一个由 好下标 组成的数组，顺序不限 。
 */

extension Solution {
    
    
    func getGoodIndices(_ variables: [[Int]], _ target: Int) -> [Int] {
        
        if variables.isEmpty {
            return []
        }

        var res = [Int]()
        
        for i in 0..<variables.count {
            
            let arr = variables[i]
            
            let value1 = arr[0]^arr[1] % 10
            let value2 = value1^arr[2] % arr[3]
            
            if value2 == target {
                res.append(i)
            }
        }
        return res
    }
}
