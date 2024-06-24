//
//  Solution503.swift
//  LeetCode
//
//  Created by fate on 2024/6/24.
//

import Foundation
/**
 503. 下一个更大元素 II
 https://leetcode.cn/problems/next-greater-element-ii/description/
 给定一个循环数组 nums （ nums[nums.length - 1] 的下一个元素是 nums[0] ），返回 nums 中每个元素的 下一个更大元素 。

 数字 x 的 下一个更大的元素 是按数组遍历顺序，这个数字之后的第一个比它更大的数，这意味着你应该循环地搜索它的下一个更大的数。如果不存在，则输出 -1 。
 */

extension Solution {
    func nextGreaterElements(_ nums: [Int]) -> [Int] {

        if nums.isEmpty {
            return [-1]
        }

        let count = nums.count
        var results = [Int](repeating: -1, count: count)
        var stack = [Int]()

        for i in 0..<2*count {

            while !stack.isEmpty && nums[i%count] > nums[stack.last!%count] {
                let index = stack.popLast()!
                results[index%count] = nums[i%count]
            }
            stack.append(i)
        }
        return results
    }
}
