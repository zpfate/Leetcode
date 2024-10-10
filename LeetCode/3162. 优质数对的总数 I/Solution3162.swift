//
//  Solution3162.swift
//  LeetCode
//
//  Created by fate on 2024/10/10.
//

import Foundation


extension Solution {
    
    func numberOfPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
        
        if nums1.isEmpty || nums2.isEmpty || k == 0 {
            return 0
        }
        
        
        
        
    }
    
    
    
    func numberOfPairsII(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
        
        if nums1.isEmpty || nums2.isEmpty || k == 0 {
            return 0
        }
        
        var res = 0
        for num1 in nums1 {
            for num2 in nums2 {
                if num1 % (num2 * k) == 0 {
                    res += 1
                }
            }
        }
        return res
    }
}
