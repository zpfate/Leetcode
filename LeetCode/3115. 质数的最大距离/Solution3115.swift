//
//  Solution3115.swift
//  LeetCode
//
//  Created by fate on 2024/7/2.
//

import Foundation

/**
 3115. 质数的最大距离
 https://leetcode.cn/problems/maximum-prime-difference/description/
 
 给你一个整数数组 nums。

 返回两个（不一定不同的）质数在 nums 中 下标 的 最大距离。
 */
extension Solution {
    
    
    func maximumPrimeDifference(_ nums: [Int]) -> Int {

            if nums.isEmpty {
                return 0
            }

            var start = 0
            var end = nums.count - 1

            while start <= end {
                if isPrime(nums[start]) {
                    break
                }
                start += 1
            }
            
            while start <= end {
                if isPrime(nums[end]) {
                    break
                }

                end -= 1
            }

            return end - start

        }


        /// 也可以直接列出100以内所有的质数判断
        func isPrime(_ num: Int) -> Bool {

            if num == 1{
                return false
            }

            for i in 3..<num {
                if num % i == 0 {
                    return false
                }
            }
            return true
        }
    
}
