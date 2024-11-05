//
//  Solution3222.swift
//  LeetCode
//
//  Created by fate on 2024/11/5.
//

import Foundation

/**
 3222. 求出硬币游戏的赢家
 https://leetcode.cn/problems/find-the-winning-player-in-coin-game/description/
 
 给你两个 正 整数 x 和 y ，分别表示价值为 75 和 10 的硬币的数目。

 Alice 和 Bob 正在玩一个游戏。每一轮中，Alice 先进行操作，Bob 后操作。每次操作中，玩家需要拿出价值 总和 为 115 的硬币。如果一名玩家无法执行此操作，那么这名玩家 输掉 游戏。

 两名玩家都采取 最优 策略，请你返回游戏的赢家。
 */

extension Solution {
    
    func losingPlayer(_ x: Int, _ y: Int) -> String {
        
        let count = min(x , y / 4)
        
        return count % 2 == 1 ? "Alice" : "Bob"
        
    }
    
}
