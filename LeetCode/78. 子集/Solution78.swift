//
//  Solution78.swift
//  LeetCode
//
//  Created by fate on 2024/7/25.
//

import Foundation

/**
 78. 子集
 https://leetcode.cn/problems/subsets/description/
 
 给你一个整数数组 nums ，数组中的元素 互不相同 。返回该数组所有可能的
 子集
 （幂集）。

 解集 不能 包含重复的子集。你可以按 任意顺序 返回解集。
 */
extension Solution {
    
    func subsets(_ nums: [Int]) -> [[Int]] {
        
        if nums.isEmpty {
            return []
        }
        
        var result = [[Int]]()
        var list = [Int]()

        backtracking(&result, &list, nums, 0)
        return result
    }
    
    fileprivate func backtracking(_ result: inout [[Int]], _ list: inout [Int], _ nums: [Int], _ pos: Int) -> Void {
        
        result.append(list)
        
        for i in pos..<nums.count {
            list.append(nums[i])
            backtracking(&result, &list, nums, i + 1)
            list.removeLast()
        }
    }
    
    /// 回溯法
    fileprivate func helper(_ result: inout [[Int]], list: inout [Int], nums: [Int], pos: Int) -> Void {
        
        if pos == nums.count {
            result.append(list)
            return
        }
        
        list.append(nums[pos])
        helper(&result, list: &list, nums: nums, pos: pos + 1)
        list.removeLast()
        helper(&result, list: &list, nums: nums, pos: pos + 1)
    }
}
