//
//  Solution3128.swift
//  LeetCode
//
//  Created by fate on 2024/8/2.
//

import Foundation

/**
 3128. 直角三角形
 
 https://leetcode.cn/problems/right-triangles/description/
 
 给你一个二维 boolean 矩阵 grid 。

 请你返回使用 grid 中的 3 个元素可以构建的 直角三角形 数目，且满足 3 个元素值 都 为 1 。

 注意：

 如果 grid 中 3 个元素满足：一个元素与另一个元素在 同一行，同时与第三个元素在 同一列 ，那么这 3 个元素称为一个 直角三角形 。这 3 个元素互相之间不需要相邻。
 */
extension Solution {
    
    func numberOfRightTriangles(_ grid: [[Int]]) -> Int {
        
        if grid.isEmpty {
            return 0
        }
        
        var count = 0
        let m = grid.count
        let n = grid.first!.count
        
        var points = [[Int]](repeating: [Int](repeating: 0, count: max(m, n)), count: 2)
        
        
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 1 {
                    points[0][j] += 1
                    points[1][j] += 1
                }
            }
        }
        
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 1 && points[1][j] > 1 && points[0][i] > 1 {
                    let temp = (points[0][i] - 1) * (points[1][j] - 1)
                    count += temp
                }
            }
        }
        
        return count
    }
    
}
