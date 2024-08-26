//
//  Solution3146.swift
//  LeetCode
//
//  Created by fate on 2024/8/24.
//

import Foundation

/**
 3146. 两个字符串的排列差
 https://leetcode.cn/problems/permutation-difference-between-two-strings/description/
 
 给你两个字符串 s 和 t，每个字符串中的字符都不重复，且 t 是 s 的一个排列。
 排列差 定义为 s 和 t 中每个字符在两个字符串中位置的绝对差值之和。
 返回 s 和 t 之间的 排列差 。
 */
extension Solution {
    
    func findPermutationDifference(_ s: String, _ t: String) -> Int {
        
        if s.isEmpty || t.isEmpty {
            return 0
        }
        
        var diff = 0
        var map = [Character: Int]()
        
        let sChars = Array(s)
        let tChars = Array(t)
        
        for i in 0..<sChars.count {
            map[sChars[i]] = i
        }
        
        for i in 0..<tChars.count {
            
            let c = tChars[i]
            diff += abs(i - map[c]!)
        }
        return diff
    }
}
