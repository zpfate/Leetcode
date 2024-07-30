//
//  Solution2961.swift
//  LeetCode
//
//  Created by fate on 2024/7/30.
//

import Foundation

/**
 2961. 双模幂运算
 https://leetcode.cn/problems/double-modular-exponentiation/
 
 给你一个下标从 0 开始的二维数组 variables ，其中 variables[i] = [ai, bi, ci, mi]，以及一个整数 target 。

 如果满足以下公式，则下标 i 是 好下标：

 0 <= i < variables.length
 ((aibi % 10)ci) % mi == target
 返回一个由 好下标 组成的数组，顺序不限 。
 */

extension Solution {
    
    func getGoodIndices(_ variables: [[Int]], _ target: Int) -> [Int] {

        var goodIndexes: [Int] = []

        // 快速幂算法
        func modularExponentiation(base: Int, exponent: Int, mod: Int) -> Int {
            var result = 1
            var base = base % mod
            var exponent = exponent

            while exponent > 0 {
                if exponent % 2 == 1 {
                    result = (result * base) % mod
                }
                base = (base * base) % mod
                exponent /= 2
            }

            return result
        }

        for (index, variable) in variables.enumerated() {
            let ai = variable[0]
            let bi = variable[1]
            let ci = variable[2]
            let mi = variable[3]

            // 计算 (ai^bi) % 10
            let firstPower = modularExponentiation(base: ai, exponent: bi, mod: 10)
            // 计算 (firstPower^ci) % mi
            let result = modularExponentiation(base: firstPower, exponent: ci, mod: mi)

            if result == target {
                goodIndexes.append(index)
            }
        }
        
        return goodIndexes
    }
}
