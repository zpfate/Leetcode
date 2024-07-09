//
//  Solution5.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/11/18.
//

import Foundation

/**
 5. 最长回文子串
 https://leetcode.cn/problems/longest-palindromic-substring/description/

 给你一个字符串 s，找到 s 中最长的回文子串。
 */

extension Solution {
    
    func longestPalindrome(_ s: String) -> String {
        if s.count < 2 {
            return s
        }
        var start = 0
        var end = 0
        var array = s.map({ String.init($0)})
        for i in 0 ..< s.count {
            let len1 = expandCenter(array: array, left: i, right: i)
            let len2 = expandCenter(array: array, left: i, right: i + 1)
            let len = max(len1, len2)
            if(len > end - start) {
                start = i - (len - 1) / 2
                end = i + len / 2
            }
        }
        array.removeFirst(start)
        let sub = array.prefix(end - start + 1).joined()
        return sub
    }
    
    func expandCenter(array: [String], left: Int, right: Int) -> Int {
        var l = left
        var r = right
        while l >= 0 && r < array.count && array[l] == array[r] {
            l -= 1
            r += 1
        }
        return r - l - 1
    }

}
