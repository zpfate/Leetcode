//
//  Solution2956.swift
//  LeetCode
//
//  Created by fate on 2024/7/16.
//

import Foundation

/**
 2956. 找到两个数组中的公共元素
 https://leetcode.cn/problems/find-common-elements-between-two-arrays/description/
 
 给你两个下标从 0 开始的整数数组 nums1 和 nums2 ，它们分别含有 n 和 m 个元素。

 请你计算以下两个数值：

 统计 0 <= i < n 中的下标 i ，满足 nums1[i] 在 nums2 中 至少 出现了一次。
 统计 0 <= i < m 中的下标 i ，满足 nums2[i] 在 nums1 中 至少 出现了一次。
 请你返回一个长度为 2 的整数数组 answer ，按顺序 分别为以上两个数值。
 
 */
extension Solution {
    
    func findIntersectionValues(_ nums1: [Int], _ nums2: [Int]) -> [Int] {

        var res = [Int](repeating: 0, count: 2)
        var s1 = Set(nums1)
        var s2 = Set(nums2)
        
        for value in nums1 {
            if s2.contains(value) {
                res[0] += 1
            }
        }
        
        for value in nums2 {
            if s1.contains(value) {
                res[1] += 1
            }
        }

        return res
    }

}
