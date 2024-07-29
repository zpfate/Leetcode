//
//  Solution682.swift
//  LeetCode
//
//  Created by fate on 2024/7/29.
//

import Foundation

/**
 682. 棒球比赛
 https://leetcode.cn/problems/baseball-game/description/
 
 你现在是一场采用特殊赛制棒球比赛的记录员。这场比赛由若干回合组成，过去几回合的得分可能会影响以后几回合的得分。

 比赛开始时，记录是空白的。你会得到一个记录操作的字符串列表 ops，其中 ops[i] 是你需要记录的第 i 项操作，ops 遵循下述规则：

 整数 x - 表示本回合新获得分数 x
 "+" - 表示本回合新获得的得分是前两次得分的总和。题目数据保证记录此操作时前面总是存在两个有效的分数。
 "D" - 表示本回合新获得的得分是前一次得分的两倍。题目数据保证记录此操作时前面总是存在一个有效的分数。
 "C" - 表示前一次得分无效，将其从记录中移除。题目数据保证记录此操作时前面总是存在一个有效的分数。
 请你返回记录中所有得分的总和。
 */
extension Solution {
    
    func calPoints(_ operations: [String]) -> Int {
        
        if operations.isEmpty {
            return 0
        }
        
        var stack = [Int]()
        var res: Int = 0
        for i in 0..<operations.count {
            let op = operations[i]
            var score = 0
            switch op {
            case "+":
                score = stack.last! + stack[stack.count - 2]
                stack.append(score)
                
            case "D":
                score = stack.last! * 2
                stack.append(score)

            case "C":
                score = -(stack.popLast()!)
            default:
                score = Int(op) ?? 0
                stack.append(score)

            }
            res += score
        }
        return res
    }
}
