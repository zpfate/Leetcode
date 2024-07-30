//
//  Solution50.swift
//  LeetCode
//
//  Created by fate on 2024/7/30.
//

import Foundation

/**
 50. Pow(x, n)
 https://leetcode.cn/problems/powx-n/description/
 
 实现 pow(x, n) ，即计算 x 的整数 n 次幂函数（即，xn ）。

 */
extension Solution {
    
    
    /// 快速幂算法
    func myPow(_ x: Double, _ n: Int) -> Double {
        
        if n == 0 {
            return 1
        }
        
        if n == 1 {
            return x
        }
        
        if n < 0 {
            return 1 / helper(x, -n)
        }
        return helper(x, n)
    }

    func helper(_ x: Double, _ n: Int) -> Double {

        if n == 0 {
            return 1
        }
        
        if n == 1 {
            return x
        }

        let singleRes = helper(x, n / 2)
        if n % 2 == 0 {
            return singleRes * singleRes
        }

        return singleRes * singleRes * x
    }

    
    
    /// 循环法 超时
    func myPowII(_ x: Double, _ n: Int) -> Double {

         var res:Double = 1
         if n == 0 {
             return 1
         }
         for _ in 1...abs(n) {
             res *= x
         }

         if n < 0 {
             return 1 / res
         }
         return res
     }
    
}
