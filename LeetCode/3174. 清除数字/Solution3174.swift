//
//  Solution3174.swift
//  LeetCode
//
//  Created by fate on 2024/9/5.
//

import Foundation
/**
 3174. 清除数字
 https://leetcode.cn/problems/clear-digits/description/
 
 给你一个字符串 s 。
 你的任务是重复以下操作删除 所有 数字字符：
 删除 第一个数字字符 以及它左边 最近 的 非数字 字符。
 请你返回删除所有数字字符以后剩下的字符串。
 */
extension Solution {
    
    func clearDigits(_ s: String) -> String {
    
        if s.isEmpty {
            return ""
        }
        
        var stack = [Character]()
        
        for char in s {
            if !char.isNumber {
                stack.append(char)
            } else {
                stack.removeLast()
            }
        }
        return String(stack)
    }
    
}
