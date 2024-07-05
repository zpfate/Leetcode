//
//  Solution3033.swift
//  LeetCode
//
//  Created by fate on 2024/7/5.
//

import Foundation

/**
 3033. 修改矩阵
 https://leetcode.cn/problems/modify-the-matrix/description/
 
 给你一个下标从 0 开始、大小为 m x n 的整数矩阵 matrix ，新建一个下标从 0 开始、名为 answer 的矩阵。使 answer 与 matrix 相等，接着将其中每个值为 -1 的元素替换为所在列的 最大 元素。

 返回矩阵 answer 。
 */

extension Solution {
    
    
    func modifiedMatrix(_ matrix: [[Int]]) -> [[Int]] {
        
        if matrix.isEmpty {
            return []
        }
        
        let m = matrix.count
        let n = matrix[0].count
        
        var maxNums = [Int](repeating: -1, count: n)
        
        for j in 0..<n {
            for i in 0..<m {
                maxNums[j] = max(matrix[i][j], maxNums[j])
            }
        }
        
        var res = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
        
        for j in 0..<n {
            for i in 0..<m {
                res[i][j] = matrix[i][j] == -1 ? maxNums[j] : matrix[i][j]
            }
        }
        
        return res
    }
}
