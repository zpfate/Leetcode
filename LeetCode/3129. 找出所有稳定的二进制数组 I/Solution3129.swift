//
//  Solution3129.swift
//  LeetCode
//
//  Created by fate on 2024/8/6.
//

import Foundation

/**
 3129. 找出所有稳定的二进制数组 I
 https://leetcode.cn/problems/find-all-possible-stable-binary-arrays-i/
 
 给你 3 个正整数 zero ，one 和 limit 。

 一个
 二进制数组
  arr 如果满足以下条件，那么我们称它是 稳定的 ：

 0 在 arr 中出现次数 恰好 为 zero 。
 1 在 arr 中出现次数 恰好 为 one 。
 arr 中每个长度超过 limit 的
 子数组
  都 同时 包含 0 和 1 。
 请你返回 稳定 二进制数组的 总 数目。

 由于答案可能很大，将它对 109 + 7 取余 后返回。
 */

extension Solution {
    
    func numberOfStableArrays(_ zero: Int, _ one: Int, _ limit: Int) -> Int {
        
        // 1. state:
        // 2. 
        
        var dp = [[Int]](repeating: [Int](repeating: 0, count: zero), count: one)
        
        var res: Int = 0
        
        return res
    }
}
