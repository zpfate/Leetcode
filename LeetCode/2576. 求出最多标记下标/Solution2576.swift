//
//  Solution2576.swift
//  LeetCode
//
//  Created by fate on 2024/9/12.
//

import Foundation

/**
 2576. 求出最多标记下标
 https://leetcode.cn/problems/find-the-maximum-number-of-marked-indices/
 
 给你一个下标从 0 开始的整数数组 nums 。

 一开始，所有下标都没有被标记。你可以执行以下操作任意次：

 选择两个 互不相同且未标记 的下标 i 和 j ，满足 2 * nums[i] <= nums[j] ，标记下标 i 和 j 。
 请你执行上述操作任意次，返回 nums 中最多可以标记的下标数目。
 */

extension Solution {
    
    func maxNumOfMarkedIndices(_ nums: [Int]) -> Int {
        
        let sortedNums = nums.sorted()
        let n = sortedNums.count
        
        var left = 0
        var right = n / 2
        var res = 0
        
        while left < n/2 && right < n {
            
            if sortedNums[left] * 2 <= sortedNums[right] {
                res += 1
                left += 1
            }
            right += 1
        }
        return res * 2
    }
}
