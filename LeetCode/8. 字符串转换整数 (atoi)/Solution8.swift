//
//  Solution8.swift
//  LeetCode
//
//  Created by fate on 2024/11/20.
//

import Foundation


/**
 8. 字符串转换整数 (atoi)
 
 请你来实现一个 myAtoi(string s) 函数，使其能将字符串转换成一个 32 位有符号整数。

 函数 myAtoi(string s) 的算法如下：

 空格：读入字符串并丢弃无用的前导空格（" "）
 符号：检查下一个字符（假设还未到字符末尾）为 '-' 还是 '+'。如果两者都不存在，则假定结果为正。
 转换：通过跳过前置零来读取该整数，直到遇到非数字字符或到达字符串的结尾。如果没有读取数字，则结果为0。
 舍入：如果整数数超过 32 位有符号整数范围 [−2^31,  2^31 − 1] ，需要截断这个整数，使其保持在这个范围内。具体来说，小于 −2^31 的整数应该被舍入为 −2^31 ，大于 2^31 − 1 的整数应该被舍入为 2^31 − 1 。
 返回整数作为最终结果。
 
 */

extension Solution {
    
    func myAtoi(_ s: String) -> Int {
        
        let chars = Array(s)
        var res = ""
        var hasNumber = false
        
        for char in chars {
            
            if char.isNumber || char == "-" || char == "+" {
                if hasNumber == true && !char.isNumber {
                    break
                }
                hasNumber = true
                res.append(char)
            } else if char.isWhitespace {
                if hasNumber {
                    break
                }
                continue
                
            } else {
                break
            }
        }
        
        if let value = Int32(res) {
            return Int(value)
        } else {
            if res.isEmpty || res.count == 1 {
                return 0
            }
            return Int(res.first == "-" ? Int32.min : Int32.max)
        }
        
    }
}
