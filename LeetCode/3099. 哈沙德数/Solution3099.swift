//
//  Solution3099.swift
//  LeetCode
//
//  Created by fate on 2024/7/3.
//

import Foundation

/**
 3099. 哈沙德数
 https://leetcode.cn/problems/harshad-number/description/
 
 如果一个整数能够被其各个数位上的数字之和整除，则称之为 哈沙德数（Harshad number）。给你一个整数 x 。如果 x 是 哈沙德数 ，则返回 x 各个数位上的数字之和，否则，返回 -1 。
 */
extension Solution {
    
    func sumOfTheDigitsOfHarshadNumber(_ x: Int) -> Int {
      
        let units = x % 10
        let tens = x / 10 % 10
        let hundreds = x / 100

        let sum = tens + units + hundreds
       
        return x % sum == 0 ? sum : -1
    }
}
