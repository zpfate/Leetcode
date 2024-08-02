//
//  SolutionLCP40.swift
//  LeetCode
//
//  Created by fate on 2024/8/1.
//

import Foundation

/**
 LCP 40. 心算挑战
 https://leetcode.cn/problems/uOAnQW/description/
 
 「力扣挑战赛」心算项目的挑战比赛中，要求选手从 N 张卡牌中选出 cnt 张卡牌，若这 cnt 张卡牌数字总和为偶数，则选手成绩「有效」且得分为 cnt 张卡牌数字总和。 给定数组 cards 和 cnt，其中 cards[i] 表示第 i 张卡牌上的数字。 请帮参赛选手计算最大的有效得分。若不存在获取有效得分的卡牌方案，则返回 0。
 */
extension Solution {
    
    func maxmiumScore(_ cards: [Int], _ cnt: Int) -> Int {
        
        let len = cards.count
        
        if cards.isEmpty || cnt > len {
            return 0
        }
        
        let sorted = cards.sorted(){$0 > $1}
        var sum = 0
        
        
        for i in 0..<cnt {
            sum += sorted[i]
        }
        
        if sum % 2 == 0 {
            return sum
        }
        
        var minUneven: Int?
        var minEven: Int?
        for i in (0..<cnt).reversed() {
            
            if minUneven != nil && minEven != nil {
                break
            }
            
            if sorted[i] % 2 == 0 {
                if minEven == nil {
                    minEven = sorted[i]
                }
            } else {
                if minUneven == nil {
                    minUneven = sorted[i]
                }
            }
        }
        
        
        var maxUneven: Int?
        var maxEven: Int?
        
        for i in cnt..<len {
            
            if maxEven != nil && maxUneven != nil {
                break
            }
            
            if sorted[i] % 2 == 0 {
                if maxEven == nil {
                    maxEven = sorted[i]
                }
            } else {
                if maxUneven == nil {
                    maxUneven = sorted[i]
                }
            }
        }
        
    
        var res: Int = 0
        if maxUneven != nil  && minEven != nil {
            res = (sum - minEven! + maxUneven!)
        }
        
        if maxEven != nil && minUneven != nil {
            res = max(res, (sum - minUneven! + maxEven!))
        }
        
        return res
        
    }
    
    func backtracking(_ cards: [Int], _ sum: inout Int, _ start: Int) -> Void {
        
        if start >= cards.count {
            return
        }
        
        sum += cards[start]
        
        for i in start..<cards.count {
            
        }
        
    }
    
}
