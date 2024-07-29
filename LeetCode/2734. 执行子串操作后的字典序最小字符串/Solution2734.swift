//
//  Solution2734.swift
//  LeetCode
//
//  Created by fate on 2024/6/27.
//

import Foundation

/**
 2734. 执行子串操作后的字典序最小字符串
 https://leetcode.cn/problems/lexicographically-smallest-string-after-substring-operation/description/
 
 给你一个仅由小写英文字母组成的字符串 s 。在一步操作中，你可以完成以下行为：

 选择 s 的任一非空子字符串，可能是整个字符串，接着将字符串中的每一个字符替换为英文字母表中的前一个字符。例如，'b' 用 'a' 替换，'a' 用 'z' 替换。
 返回执行上述操作 恰好一次 后可以获得的 字典序最小 的字符串。

 子字符串 是字符串中的一个连续字符序列。

 现有长度相同的两个字符串 x 和 字符串 y ，在满足 x[i] != y[i] 的第一个位置 i 上，如果  x[i] 在字母表中先于 y[i] 出现，则认为字符串 x 比字符串 y 字典序更小 。
 */

extension Solution {
    
    func smallestString(_ s: String) -> String {
        
        var chars = Array(s)
        var flag = false
        var k = 0
        for c in chars {
            if c == "a" {
                k += 1
            } else {
                break
            }
        }
        
        for i in k..<chars.count {
            let c = chars[i]
            if c == "a" {
                if flag {
                    break
                }
            } else {
                flag = true
                chars[i] = previousChar(c)
            }
        }
        return String(chars)
    }
    
    func previousChar(_ c: Character) -> Character {
        
        let previousAsciiValue: UInt8
        
        if c.asciiValue == 97 { // ASCII 值 97 是 'a'
            previousAsciiValue = 122 // ASCII 值 122 是 'z'
        } else {
            previousAsciiValue = c.asciiValue! - 1
        }

        // 将 ASCII 值转换回字符并追加到结果字符串
        return Character(UnicodeScalar(previousAsciiValue))
    }
}
