//
//  Solution2873.swift
//  LeetCode
//
//  Created by fate on 2024/9/20.
//

import Foundation

/**
 2873. 有序三元组中的最大值 I
 https://leetcode.cn/problems/maximum-value-of-an-ordered-triplet-i/
 
 给你一个下标从 0 开始的整数数组 nums 。

 请你从所有满足 i < j < k 的下标三元组 (i, j, k) 中，找出并返回下标三元组的最大值。如果所有满足条件的三元组的值都是负数，则返回 0 。

 下标三元组 (i, j, k) 的值等于 (nums[i] - nums[j]) * nums[k] 。
 */

extension Solution {
    
    func maximumTripletValue(_ nums: [Int]) -> Int {
        
        if nums.count < 3 {
            return 0
        }
        
        let len = nums.count
        
        var maxValue = 0
        
        for i in 0..<len-2 {
            for j in (i+1)..<len-1 {
                for k in (j+1)..<len {
                    let res = (nums[i] - nums[j]) * nums[k]
                    maxValue = max(maxValue, res)
                }
            }
        }
        return maxValue
    }
}
