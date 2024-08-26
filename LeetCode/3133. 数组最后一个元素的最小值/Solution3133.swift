//
//  Solution3133.swift
//  LeetCode
//
//  Created by fate on 2024/8/22.
//

import Foundation

/**
 3133. 数组最后一个元素的最小值
 https://leetcode.cn/problems/minimum-array-end/description/
 
 给你两个整数 n 和 x 。你需要构造一个长度为 n 的 正整数 数组 nums ，对于所有 0 <= i < n - 1 ，满足 nums[i + 1] 大于 nums[i] ，并且数组 nums 中所有元素的按位 AND 运算结果为 x 。

 返回 nums[n - 1] 可能的 最小 值。
 */

extension Solution {
    
    func minEnd(_ n: Int, _ x: Int) -> Int {

        var m = n - 1
        var ans = x
        var i = 0, j = 0
        
        while (m >> j) > 0 {
            if (ans >> i & 1) == 0 {
                ans |= (m >> j & 1) << i
                j += 1
            }
            
            i += 1
        }
        return ans
    }
    
}
