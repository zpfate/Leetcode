//
//  Solution633.swift
//  LeetCode
//
//  Created by fate on 2024/11/4.
//

import Foundation


/**
 
 633. 平方数之和

 给定一个非负整数 c ，你要判断是否存在两个整数 a 和 b，使得 a2 + b2 = c 。
 */

extension Solution {
    
    
    func judgeSquareSum(_ c: Int) -> Bool {
        
        var left = 0
        var right = Int(sqrt(Double(c)))
        
        while left <= right {
            
            if insidePow(left, 2) + insidePow(right, 2) > c {
                right -= 1
            } else if (insidePow(left, 2) + insidePow(right, 2) < c) {
                left += 1
            } else {
                return true
            }
        }
        return false
    }
    
    private func insidePow(_ x: Int, _ y: Int) -> Int {
        
        let res = pow(Double(x), Double(y))
        return Int(res)
    }
        
}
