//
//  Solution2101.swift
//  LeetCode
//
//  Created by fate on 2024/7/22.
//

import Foundation

/**
 2101. 引爆最多的炸弹
 https://leetcode.cn/problems/detonate-the-maximum-bombs/description/
 
 给你一个炸弹列表。一个炸弹的 爆炸范围 定义为以炸弹为圆心的一个圆。

 炸弹用一个下标从 0 开始的二维整数数组 bombs 表示，其中 bombs[i] = [xi, yi, ri] 。xi 和 yi 表示第 i 个炸弹的 X 和 Y 坐标，ri 表示爆炸范围的 半径 。

 你需要选择引爆 一个 炸弹。当这个炸弹被引爆时，所有 在它爆炸范围内的炸弹都会被引爆，这些炸弹会进一步将它们爆炸范围内的其他炸弹引爆。

 给你数组 bombs ，请你返回在引爆 一个 炸弹的前提下，最多 能引爆的炸弹数目。
 */

extension Solution {
    
    func maximumDetonation(_ bombs: [[Int]]) -> Int {
        
        if bombs.isEmpty {
            return 0
        }
        
        let count = bombs.count
        var edges = [Int: Array<Int>]()

        for i in 0..<count {
            
            var temp = [Int]()
            for j in 0..<count {
                if i != j && canExplode(i, j, bombs) {
                    temp.append(j)
                }
            }
            edges[i] = temp
        }
        
        var res = 0
        for i in 0..<count {
            
            var visited = [Bool](repeating: false, count: count)
            var cnt = 1
            var queue = [Int]()
            queue.append(i)
            visited[i] = true
            
            while !queue.isEmpty {
                let cidx = queue.removeFirst()
                for nidx in edges[cidx] ?? [] {
                    if visited[nidx] {
                        continue
                    }
                    cnt += 1
                    queue.append(nidx)
                    visited[nidx] = true
                }
            }
            res = max(res, cnt)
        }
        
        return res
    }
    
    fileprivate func bfs(adjacencyList: [Int: Array<Int>]) -> Int {
        
        return 0
    }
    
    
    fileprivate func canExplode(_ i: Int, _ j: Int, _ bombs:[[Int]]) -> Bool {
        
        let bomb1 = bombs[i]
        let bomb2 = bombs[j]
        let x = abs(bomb1[0] - bomb2[0])
        let y = abs(bomb1[1] - bomb2[1])
        return x * x + y * y <= bomb1[2] * bomb1[2]
    }
    
}
