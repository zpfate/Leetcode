//
//  Solution1014.swift
//  LeetCode
//
//  Created by fate on 2024/9/23.
//

import Foundation

/**
 1014. 最佳观光组合
 https://leetcode.cn/problems/best-sightseeing-pair/description/
 
 给你一个正整数数组 values，其中 values[i] 表示第 i 个观光景点的评分，并且两个景点 i 和 j 之间的 距离 为 j - i。

 一对景点（i < j）组成的观光组合的得分为 values[i] + values[j] + i - j ，也就是景点的评分之和 减去 它们两者之间的距离。

 返回一对观光景点能取得的最高分。
 */

extension Solution {

    
    func maxScoreSightseeingPair(_ values: [Int]) -> Int {
        
        if values.count < 2 {
            return 0
        }
        
        return 0
    }
    
    /// 暴力超时
    func maxScoreSightseeingPairII(_ values: [Int]) -> Int {
        
        if values.count < 2 {
            return 0
        }

        let n = values.count
        var ans = 0
        
        for i in 0..<n-1 {
            for j in (i+1)..<n {
                ans = max(ans, values[j] + values[i] + i - j)
            }
        }       
        return ans
    }
}
