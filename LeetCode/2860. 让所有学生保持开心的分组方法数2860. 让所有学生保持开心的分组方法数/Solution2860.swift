//
//  Solution2860.swift
//  LeetCode
//
//  Created by fate on 2024/9/4.
//

import Foundation

/**
 2860. 让所有学生保持开心的分组方法数
 https://leetcode.cn/problems/happy-students/description/
 
 给你一个下标从 0 开始、长度为 n 的整数数组 nums ，其中 n 是班级中学生的总数。班主任希望能够在让所有学生保持开心的情况下选出一组学生：

 如果能够满足下述两个条件之一，则认为第 i 位学生将会保持开心：

 这位学生被选中，并且被选中的学生人数 严格大于 nums[i] 。
 这位学生没有被选中，并且被选中的学生人数 严格小于 nums[i] 。
 返回能够满足让所有学生保持开心的分组方法的数目。
 */
extension Solution {
    
    func countWays(_ nums: [Int]) -> Int {
        
        if nums.isEmpty {
            return 0
        }
        
        let n = nums.count
        let sortedNums = nums.sorted()
        var res = 0
        
        for i in 0...n {
            
            if i > 0 && sortedNums[i - 1] >= i {
                continue
            }

            if i < n && sortedNums[i] <= i {
                continue
            }

            res += 1

            
        }
        return res 
    }
}
