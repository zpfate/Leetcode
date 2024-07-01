//
//  Solution2741.swift
//  LeetCode
//
//  Created by fate on 2024/6/26.
//

import Foundation

/**
 2741. 特别的排列
 https://leetcode.cn/problems/special-permutations/description/
 
 给你一个下标从 0 开始的整数数组 nums ，它包含 n 个 互不相同 的正整数。如果 nums 的一个排列满足以下条件，我们称它是一个特别的排列：

 对于 0 <= i < n - 1 的下标 i ，要么 nums[i] % nums[i+1] == 0 ，要么 nums[i+1] % nums[i] == 0 。
 请你返回特别排列的总数目，由于答案可能很大，请将它对 109 + 7 取余 后返回。

 */
extension Solution {
    
    func specialPerm(_ nums: [Int]) -> Int {
        
        var visited = [Bool](repeating: false, count: nums.count)
        return dfsSpecialPerm(nums, depth: 0, prevPos: -1, visited: &visited)
    }
    
    func dfsSpecialPerm(_ nums: [Int], depth: Int, prevPos: Int, visited: inout [Bool]) -> Int {
        
        let mod = Int(powf(10, 7)) + 7
        
        if depth == nums.count {
            return 1
        }
        
        var res = 0
        for i in 0..<nums.count {
            if !visited[i] {
                if prevPos == -1 || nums[prevPos] % nums[i] == 0 || nums[i] % nums[prevPos] == 0 {
                    visited[i] = true
                    res = (res + dfsSpecialPerm(nums, depth: depth + 1, prevPos: i, visited: &visited)) % mod
                    visited[i] = false
                }
            }
        }
        return res
    }
    
    

   
//    func dfsSpecialPerm(_ nums: [Int], f: inout [[Int]], state: Int, i: Int) -> Int {
//        
//        let count = nums.count
//        let mod = Int(powl(10, 7))
//
//        if f[state][i] != -1 {
//            return f[state][i]
//        }
//        
//        if state == (1 << i) {
//            return 1
//        }
//        
//        f[state][i] = 0
//        
//        for j in 0..<count {
//            if i == j || (state >> j & 1) == 0 {
//                continue
//            }
//        
//            if nums[i] % nums[j] != 0 && nums[j] % nums[i] != 0{
//                continue
//            }
//            f[state][i] = (f[state][i] + dfsSpecialPerm(nums, f: &f, state: state, i: j)) % mod
//        }
//        
//        return f[state][i]
//    }
}
