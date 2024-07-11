//
//  Solution2970.swift
//  LeetCode
//
//  Created by fate on 2024/7/10.
//

import Foundation

/**
 2970. 统计移除递增子数组的数目 I
 https://leetcode.cn/problems/count-the-number-of-incremovable-subarrays-i/description/
 
 给你一个下标从 0 开始的 正 整数数组 nums 。

 如果 nums 的一个子数组满足：移除这个子数组后剩余元素 严格递增 ，那么我们称这个子数组为 移除递增 子数组。比方说，[5, 3, 4, 6, 7] 中的 [3, 4] 是一个移除递增子数组，因为移除该子数组后，[5, 3, 4, 6, 7] 变为 [5, 6, 7] ，是严格递增的。

 请你返回 nums 中 移除递增 子数组的总数目。

 注意 ，剩余元素为空的数组也视为是递增的。

 子数组 指的是一个数组中一段连续的元素序列。
 */

extension Solution {
    
    func incremovableSubarrayCountA(_ nums: [Int]) -> Int {
        
        // 5, 3, 4, 6, 7
        var res = 0
        let len = nums.count
        
        for i in 0..<len {
            
            for j in 0..<len {
                
                if isInscreasing(nums, l: i, r: j) {
                    res += 1
                }
                
            }
        }
        return res
    }
    
    
    func isInscreasing(_ nums: [Int], l: Int, r: Int) -> Bool {
        
        let len = nums.count
        
        for i in 1..<len {
            
            if i >= l && i <= r + 1 {
                continue
            }
            
            if nums[i] <= nums[i - 1] {
                return false
            }
            
            if l - 1 >= 0 && r + 1 <= len && nums[r + 1] < nums[l - 1] {
                return false
            }
    
        }
        return true
    }
    
    
    func incremovableSubarrayCount(_ nums: [Int]) -> Int {
        
        if nums.isEmpty {
            return 0
        }
        
        if nums.count == 1 {
            return 1
        }
        
        // 5, 3, 4, 6, 7
        var res = 0
        let len = nums.count
        var l = 0
        
        while l < len && nums[l + 1] > nums[l]  {
            l += 1
        }
        // 统计的是[l + 1, n-1] -----> [0, r]
        res = l + 1 + (l + 1) < len ? 1 : 0
        
        return res
    }
}
