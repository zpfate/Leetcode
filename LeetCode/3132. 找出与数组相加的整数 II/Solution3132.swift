//
//  Solution3132.swift
//  LeetCode
//
//  Created by fate on 2024/8/9.
//

import Foundation

/**
 3132. 找出与数组相加的整数 II
 https://leetcode.cn/problems/find-the-integer-added-to-array-ii/description/


 给你两个整数数组 nums1 和 nums2。

 从 nums1 中移除两个元素，并且所有其他元素都与变量 x 所表示的整数相加。如果 x 为负数，则表现为元素值的减少。

 执行上述操作后，nums1 和 nums2 相等 。当两个数组中包含相同的整数，并且这些整数出现的频次相同时，两个数组 相等 。

 返回能够实现数组相等的 最小 整数 x 。
 */

extension Solution {
    
    func minimumAddedInteger(_ nums1: [Int], _ nums2: [Int]) -> Int {
        
        if nums1.isEmpty || nums2.isEmpty {
            return 0
        }
    
        let sorted1 = nums1.sorted()
        let sorted2 = nums2.sorted()
        
        let m = sorted1.count
        let n = sorted2.count
        
        for i in (0...2).reversed() {
            
            var left = i + 1
            var right = 1
            
            while left < m && right < n {
                
                if nums1[left] - nums2[right] == nums1[i] - nums2[0] {
                    right += 1
                }
                left += 1
            }
            
            if right == n {
                return nums2[0] - nums1[i]
            }

        }
        
        return 0
//
//        var dict: [Int: Int] = [Int: Int]()
//        
//        for num1 in nums1 {
//            
//            for num2 in nums2 {
//                
//                let diff = num2 - num1
//                if dict.keys.contains(diff) {
//                    dict[diff]! += 1
//                } else {
//                    dict[diff] = 1
//                }
//            }
//        }
//    
//        
//        var res: Int?
//        
//        for num in dict.keys {
//            if dict[num]! >= nums2.count {
//                if res == nil {
//                    res = num
//                } else {
//                    res = min(res!, num)
//                }
//            }
//        }
//        return res!
    }
}
