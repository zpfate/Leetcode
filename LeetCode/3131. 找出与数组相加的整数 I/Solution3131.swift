//
//  Solution3131.swift
//  LeetCode
//
//  Created by fate on 2024/8/8.
//

import Foundation

/**
 3131. 找出与数组相加的整数 I
 https://leetcode.cn/problems/find-the-integer-added-to-array-i/description/
 
 给你两个长度相等的数组 nums1 和 nums2。

 数组 nums1 中的每个元素都与变量 x 所表示的整数相加。如果 x 为负数，则表现为元素值的减少。

 在与 x 相加后，nums1 和 nums2 相等 。当两个数组中包含相同的整数，并且这些整数出现的频次相同时，两个数组 相等 。

 返回整数 x 。
 */

extension Solution {
    
    func addedInteger(_ nums1: [Int], _ nums2: [Int]) -> Int {
        
        if nums1.isEmpty {
            return 0
        }
        
        let min1: Int = nums1.min()!
        let min2: Int = nums2.min()!
        
        return min2 - min1
        
    }
}
