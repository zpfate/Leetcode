//
//  Solution2972.swift
//  LeetCode
//
//  Created by fate on 2024/7/11.
//

import Foundation


/**
 2972. 统计移除递增子数组的数目 II
 https://leetcode.cn/problems/count-the-number-of-incremovable-subarrays-ii/description/
 
 给你一个下标从 0 开始的 正 整数数组 nums 。

 如果 nums 的一个子数组满足：移除这个子数组后剩余元素 严格递增 ，那么我们称这个子数组为 移除递增 子数组。比方说，[5, 3, 4, 6, 7] 中的 [3, 4] 是一个移除递增子数组，因为移除该子数组后，[5, 3, 4, 6, 7] 变为 [5, 6, 7] ，是严格递增的。

 请你返回 nums 中 移除递增 子数组的总数目。

 注意 ，剩余元素为空的数组也视为是递增的。

 子数组 指的是一个数组中一段连续的元素序列。
 
 */
extension Solution {
    
    func incremovableSubarrayCountII(_ nums: [Int]) -> Int {
        
        // 5, 3, 4, 6, 7
        var res = 0
        let len = nums.count
        
        var l = 1

        while l - 1 >= 0 && l < len && nums[l] > nums[l - 1] {
            l += 1
        }
        
        /// 前面是递增数组 直接加
        res += (l + (l < len ? 1 : 0))
        
        var r = len - 2
        
        while r >= 0 {
            
            while l > 0 && nums[l - 1] >= nums[r + 1] {
                l -= 1
            }
            
            res += (l + (l <= r ? 1 : 0))
            if nums[r] >= nums[r + 1] {
                break
            }
            r -= 1
        }
        
        return res
    }
}
