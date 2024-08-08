//
//  SolutionX.swift
//  LeetCode
//
//  Created by fate on 2024/8/8.
//

import Foundation



class SolutionX {
    
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        
        if nums.isEmpty {
            return 0
        }
        
        var result: Int?
        let sorted = nums.sorted()
        let len = sorted.count
        var start = 0
        
        while start + 1 < len {
            
            var l = 1 + start
            var r = len - 1
            
            if start > 0 && sorted[start] == sorted[start - 1] {
                start += 1
                continue
            }
            
            while l < r {
                
                if l - 1 > start, sorted[start] == sorted[start - 1] {
                    l += 1
                    continue
                }
                
                /// 三数之和
                let sum = sorted[start] + sorted[l] + sorted[r]
                if result == target {
                    return target
                }
                
                if abs(sum - target) < abs(result == nil ? Int.max : result! - target ) {
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
        
        return result!
    }
    
    
//    func helper(_ nums:[Int], _ list: inout [Int], target: Int, _ pos: Int) -> Void {
//        
//        
//        if list.count >= 3 {
//            return
//        }
//        list.append(nums[pos])
//        
//        for i in pos..<nums.count {
//            list.append(nums[i])
//            var sum = 0
//            for value in list {
//                sum += value
//            }
//            
//            result = min(<#T##x: Comparable##Comparable#>, <#T##y: Comparable##Comparable#>)
//        }
//        
//    }
    
    
    
}
