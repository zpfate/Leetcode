//
//  Solution39.swift
//  LeetCode
//
//  Created by fate on 2024/7/25.
//

import Foundation

/**
 39. 组合总和
 https://leetcode.cn/problems/combination-sum/description/
 
 给你一个 无重复元素 的整数数组 candidates 和一个目标整数 target ，找出 candidates 中可以使数字和为目标数 target 的 所有 不同组合 ，并以列表形式返回。你可以按 任意顺序 返回这些组合。

 candidates 中的 同一个 数字可以 无限制重复被选取 。如果至少一个数字的被选数量不同，则两种组合是不同的。

 对于给定的输入，保证和为 target 的不同组合数少于 150 个。
 */
extension Solution {
    
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {

        var result = [[Int]]()
        var list = [Int]()
        
        var nums = candidates.sorted()
        backtracking(&result, &list, nums, 0, target)
        return result
        
    }
    
    func backtracking(_ result: inout [[Int]], _ list: inout [Int], _ nums: [Int], _ pos: Int, _ target: Int) -> Void {
        
        if target == 0 {
            result.append(list)
            return
        }
                
        for i in pos..<nums.count {
            
            /// 剪枝
            if target - nums[i] < 0 {
                break
            }
            list.append(nums[i])
            backtracking(&result, &list, nums, i, target - nums[i])
            list.removeLast()
        }
    }
}
