//
//  Solution3106.swift
//  LeetCode
//
//  Created by fate on 2024/7/27.
//

import Foundation

/**
 3106. 满足距离约束且字典序最小的字符串
 
 给你一个字符串 s 和一个整数 k 。

 定义函数 distance(s1, s2) ，用于衡量两个长度为 n 的字符串 s1 和 s2 之间的距离，即：

 字符 'a' 到 'z' 按 循环 顺序排列，对于区间 [0, n - 1] 中的 i ，计算所有「 s1[i] 和 s2[i] 之间 最小距离」的 和 。
 例如，distance("ab", "cd") == 4 ，且 distance("a", "z") == 1 。

 你可以对字符串 s 执行 任意次 操作。在每次操作中，可以将 s 中的一个字母 改变 为 任意 其他小写英文字母。

 返回一个字符串，表示在执行一些操作后你可以得到的 字典序最小 的字符串 t ，且满足 distance(s, t) <= k 。
 */

extension Solution {
    
    func getSmallestString(_ s: String, _ k: Int) -> String {
        
        let chars = Array(s)
        let len = chars.count
        var res = s
        
        for i in 0..<len {
            
        }
        
        return res
    }
}
