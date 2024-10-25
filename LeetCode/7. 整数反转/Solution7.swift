//
//  File.swift
//  LeetCode
//
//  Created by fate on 2024/10/23.
//

import Foundation

/**
 7. 整数反转
 https://leetcode.cn/problems/reverse-integer/description/
 
 
 给你一个 32 位的有符号整数 x ，返回将 x 中的数字部分反转后的结果。
 如果反转后整数超过 32 位的有符号整数的范围 [−231,  231 − 1] ，就返回 0。
 假设环境不允许存储 64 位整数（有符号或无符号）。
 */
extension Solution {
    
    func reverse(_ x: Int) -> Int {
        
        var num = x
        var res = 0
        
        while num != 0 {
            
            let tmp = num % 10
            // 判断是否 大于 最大32位整数
            if (res > 214748364 || (res == 214748364 && tmp > 7)) {
                return 0;
            }
            //判断是否 小于 最小32位整数
            if (res < -214748364 || (res == -214748364 && tmp < -8)) {
                return 0;
            }
            
            // 加上当前的
            res = res * 10 + tmp
            num = num / 10
        }
        
        return res
    }
}
