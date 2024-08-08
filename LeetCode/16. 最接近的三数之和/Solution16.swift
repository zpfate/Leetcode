//
//  File.swift
//  LeetCode
//
//  Created by fate on 2024/8/8.
//

import Foundation

/**
 16. 最接近的三数之和
 https://leetcode.cn/problems/3sum-closest/description/
 
 给你一个长度为 n 的整数数组 nums 和 一个目标值 target。请你从 nums 中选出三个整数，使它们的和与 target 最接近。

 返回这三个数的和。

 假定每组输入只存在恰好一个解。
 */

extension Solution {
    
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
     
         if nums.isEmpty {
             return 0
         }
         
         let sorted = nums.sorted()
         let len = sorted.count
         var start = 0
        var result: Int = nums[0] + nums[1] + nums[len - 1]

         while start + 2 < len {
             
             var l = 1 + start
             var r = len - 1
             
             if start > 0 && sorted[start] == sorted[start - 1] {
                 start += 1
                 continue
             }
             
             while l < r {
                 if l - 1 > start && sorted[l] == sorted[l - 1] {
                     l += 1
                     continue
                 }
                 
                 /// 三数之和
                 let sum = sorted[start] + sorted[l] + sorted[r]
                 if result == target {
                     return target
                 }
                 
                 if abs(sum - target) < abs(result - target ) {
                     result = sum
                 }
                 
                 if sum > target {
                     r -= 1
                 } else  if sum < target {
                     l += 1
                 }
             }
             
             start += 1
         }
         
         return result
    }
    
}
