//
//  Solution2798.swift
//  LeetCode
//
//  Created by fate on 2024/9/3.
//

import Foundation

/**
 2708. 一个小组的最大实力值
 https://leetcode.cn/problems/maximum-strength-of-a-group/description/
 
 给你一个下标从 0 开始的整数数组 nums ，它表示一个班级中所有学生在一次考试中的成绩。老师想选出一部分同学组成一个 非空 小组，且这个小组的 实力值 最大，如果这个小组里的学生下标为 i0, i1, i2, ... , ik ，那么这个小组的实力值定义为 nums[i0] * nums[i1] * nums[i2] * ... * nums[ik​] 。

 请你返回老师创建的小组能得到的最大实力值为多少。
 */
extension Solution {
    
    func maxStrength(_ nums: [Int]) -> Int {
        
        if nums.isEmpty {
            return 0
        }
        
        if nums.count == 1 {
            return nums.first!
        }
        
        var res = 1
        var minX = -10
        
        var zeroCount = 0
        
        for num in nums {
    
            if num != 0 {
                res *= num
            } else {
                zeroCount += 1
            }
            
            /// 记录ABS值最小的负数
            if num < 0 {
                minX = max(minX, num)
            }
        }
        
        switch zeroCount {
        case nums.count:
            return 0
        case nums.count-1:
            return res < 0 ? 0 : res
        default:
            return res > 0 ? res : res / minX
        }
    }
}
