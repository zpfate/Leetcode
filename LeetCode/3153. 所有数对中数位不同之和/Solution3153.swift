//
//  Solution3153.swift
//  LeetCode
//
//  Created by fate on 2024/8/30.
//

import Foundation

/**
 3153. 所有数对中数位不同之和
 https://leetcode.cn/problems/sum-of-digit-differences-of-all-pairs/description/
 
 你有一个数组 nums ，它只包含 正 整数，所有正整数的数位长度都 相同 。
 两个整数的 数位不同 指的是两个整数 相同 位置上不同数字的数目。
 请你返回 nums 中 所有 整数对里，数位不同之和。
 */
extension Solution {
    
    func sumDigitDifferences(_ nums: [Int]) -> Int {
        
        return 0
    }
    
    /// 三层循环超时
    func sumDigitDifferencesII(_ nums: [Int]) -> Int {
        
        if nums.count < 2 {
            return 0
        }
        
        var res = 0
        let len = nums.count
        
        for i in 0..<len-1 {
            for j in (i + 1)..<len {
                
                let chars1 = Array("\(nums[i])")
                let chars2 = Array("\(nums[j])")
                
                for k in 0..<chars1.count {
                    if chars1[k] != chars2[k] {
                        res += 1
                    }
                }
            }
        }
        return res
    }
}
