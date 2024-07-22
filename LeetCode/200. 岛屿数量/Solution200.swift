//
//  Solution200.swift
//  LeetCode
//
//  Created by fate on 2024/6/25.
//

import Foundation

/**
 200. 岛屿数量
 https://leetcode.cn/problems/number-of-islands/description/
 
 给你一个由 '1'（陆地）和 '0'（水）组成的的二维网格，请你计算网格中岛屿的数量。

 岛屿总是被水包围，并且每座岛屿只能由水平方向和/或竖直方向上相邻的陆地连接形成。

 此外，你可以假设该网格的四条边均被水包围。
 */

extension Solution {
    
    func numIslands(_ grid: [[Character]]) -> Int {
        
        return dfsInMatrix(grid)
    }
    
    func dfsInMatrix(_ matrix: [[Character]]) -> Int {
        
        if matrix.isEmpty || matrix[0].isEmpty {
            return 0;
        }
        
        let m = matrix.count
        let n = matrix[0].count
        
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: m)
        var connectedComponentCount = 0
        
        for i in 0..<m {
            for j in 0..<n {
                
                if matrix[i][j] != "0" && !visited[i][j] {
                    dfs(matrix: matrix, visited: &visited, x: i, y: j)
                    connectedComponentCount += 1
                }
            }
        }
        
        return connectedComponentCount
    }
    
    
    func dfs(matrix: [[Character]], visited: inout [[Bool]], x: Int, y: Int) {
        
        if matrix[x][y] == "0" {
            return
        }
        
        visited[x][y] = true
        
        let dx = [1, 0, -1, 0]
        let dy = [0, 1, 0, -1]
        
        for i in 0..<4 {
            let newX = x + dx[i]
            let newY = y + dy[i]
            
            if checkRange(matrix: matrix, x: newX, y: newY) && !visited[newX][newY] {
                if matrix[x][y] == "0" {
                    continue
                }
                dfs(matrix: matrix, visited: &visited, x: newX, y: newY)
            }
        }
    }
    
    func checkRange(matrix: [[Character]], x: Int, y: Int) -> Bool {
        return x >= 0 && x < matrix.count && y >= 0 && y < matrix[0].count
    }
    
}
