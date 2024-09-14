//
//  Snolutio2390.swift
//  LeetCode
//
//  Created by fate on 2024/9/14.
//

import Foundation
/**
 2390. 从字符串中移除星号
 https://leetcode.cn/problems/removing-stars-from-a-string/description/
 
 给你一个包含若干星号 * 的字符串 s 。

 在一步操作中，你可以：

 选中 s 中的一个星号。
 移除星号 左侧 最近的那个 非星号 字符，并移除该星号自身。
 返回移除 所有 星号之后的字符串。

 注意：
 生成的输入保证总是可以执行题面中描述的操作。
 可以证明结果字符串是唯一的。
 */

extension Solution {
    
    func removeStars(_ s: String) -> String {
        
        if s.isEmpty {
            return ""
        }
        
        let chars = Array(s)
        var stack = [Character]()
        
        for char in chars {
            
            if char == "*" {
                stack.popLast()
            } else {
                stack.append(char)
            }
        }
        return String(stack)
    }
}
