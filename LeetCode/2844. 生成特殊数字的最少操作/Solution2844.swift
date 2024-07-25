//
//  Solution2844.swift
//  LeetCode
//
//  Created by fate on 2024/7/25.
//

import Foundation

/**
 2844. 生成特殊数字的最少操作
 https://leetcode.cn/problems/minimum-operations-to-make-a-special-number/description/
 
 给你一个下标从 0 开始的字符串 num ，表示一个非负整数。

 在一次操作中，您可以选择 num 的任意一位数字并将其删除。请注意，如果你删除 num 中的所有数字，则 num 变为 0。

 返回最少需要多少次操作可以使 num 变成特殊数字。

 如果整数 x 能被 25 整除，则该整数 x 被认为是特殊数字。
 */

extension Solution {
    
    func minimumOperations(_ num: String) -> Int {
        
        let len = num.count
        let chars = Array(num)
        
        var find0 = false, find5 = false
        for i in (0..<len).reversed() {
            
            let char = chars[i]
            
            if char == "0" || char == "5" {
                
                if find0 {
                    return len - i - 2
                }
                
                if char == "0" {
                    find0 = true
                } else {
                    find5 = true
                }
            } else if char == "2" || char == "7" {
                if find5 {
                    return len - i - 2
                }
            }
        }
        
        if find0 {
            return len - 1
        }
        return len
    }
    
    fileprivate func backtracking() -> Void {
        
        
        
    }
    
    fileprivate func isDivided(_ num: String) -> Bool {
        
        if num == "0" {
            return true
        }
        
        let divisors = ["00", "25", "50", "75"]
        for divisor in divisors {
            if num.hasSuffix(divisor) {
                return true
            }
        }
        return false
    }
}
