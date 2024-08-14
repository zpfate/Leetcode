//
//  Solution3152.swift
//  LeetCode
//
//  Created by fate on 2024/8/14.
//

import Foundation


/**
 3152. 特殊数组 II
 https://leetcode.cn/problems/special-array-ii/description/
 
 如果数组的每一对相邻元素都是两个奇偶性不同的数字，则该数组被认为是一个 特殊数组 。

 周洋哥有一个整数数组 nums 和一个二维整数矩阵 queries，对于 queries[i] = [fromi, toi]，请你帮助周洋哥检查子数组 nums[fromi..toi] 是不是一个 特殊数组 。

 返回布尔数组 answer，如果 nums[fromi..toi] 是特殊数组，则 answer[i] 为 true ，否则，answer[i] 为 false 。
 */

extension Solution {
    
    func isArraySpecial(_ nums: [Int], _ queries: [[Int]]) -> [Bool] {
        
        let len = queries.count
        
        if nums.count < 2 {
            return [Bool](repeating: true, count: len)
        }
        
        let count = nums.count
        var validStart = 0
        var memo = [[Int]]()
        var results = [Bool]()
        
        for i in 1..<count {
            if abs(nums[i - 1] % 2) == abs(nums[i] % 2) {
                if i != validStart {
                    memo.append([validStart, i - 1])
                    validStart = i
                }
            }
            
            if i == count - 1 {
                memo.append([validStart, count - 1])
            }
        }
        
        for indexes in queries {
            
            if indexes[0] == indexes[1] {
                results.append(true)
                continue
            }
            
            for memoIndexes in memo {
                if indexes[0] >= memoIndexes[0] && indexes[1] <= memoIndexes[1] {
                    results.append(true)
                    break
                }
                
                if memoIndexes == memo.last {
                    results.append(false)
                }
            }
        }
        return results
    }
    
    func isArraySpecialII(_ nums: [Int], _ queries: [[Int]]) -> [Bool] {
        
        let len = queries.count
        if nums.count < 2 {
            return [Bool](repeating: true, count: len)
        }

        var results = [Bool]()
        
        for i in 0..<len {
            
            let indexes = queries[i]
            if indexes[0] == indexes[1] {
                results.append(true)
                continue
            }
            
            for j in (indexes[0] + 1)...indexes[1] {
                
                if abs(nums[j] % 2) == abs(nums[j - 1] % 2) {
                    results.append(false)
                    break
                }
            }
            
            if results.count < (i + 1) {
                results.append(true)
            }
        }
        return results
    }
    

    
}
