//
//  Solution3151.swift
//  LeetCode
//
//  Created by fate on 2024/8/13.
//

import Foundation

/**
 3151. 特殊数组 I
 https://leetcode.cn/problems/special-array-i/description/
 
 3151. 特殊数组 I

 如果数组的每一对相邻元素都是两个奇偶性不同的数字，则该数组被认为是一个 特殊数组 。

 Aging 有一个整数数组 nums。如果 nums 是一个 特殊数组 ，返回 true，否则返回 false。
 */

extension Solution {
    
    func isArraySpecial(_ nums: [Int]) -> Bool {
        
        if nums.isEmpty {
            return false
        }
        
        if nums.count == 1 {
            return true
        }
        
        for i in 1..<nums.count {
            
            if abs(nums[i - 1] % 2) == abs(nums[i] % 2 ) {
                return false
            }
        }
        
        return true
    }
}
