//
//  Solution3148.swift
//  LeetCode
//
//  Created by fate on 2024/8/15.
//

import Foundation



extension Solution {
    
    func maxScore(_ grid: [[Int]]) -> Int {
        
        if grid.isEmpty {
            return 0
        }
        
        let m = grid.count
        let n = grid.first!.count
        var precol = [Int](repeating: Int.min, count: n)
        var ans = Int.min
        
        for i in 0..<m {
            
            var prerow = Int.min
            for j in 0..<n {
                var f = Int.min
                if i > 0 {
                    f = max(f, grid[i][j] + precol[j])
                }
                
                if j > 0 {
                    f = max(f, grid[i][j] + prerow)
                }
                
                ans = max(ans, f)
                precol[j] = max(precol[j], max(f, 0) - grid[i][j])
                prerow = max(prerow, max(f, 0) - grid[i][j])
            }
        }
        return ans
    }
    
}
