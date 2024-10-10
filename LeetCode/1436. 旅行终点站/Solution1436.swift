//
//  Solution1436.swift
//  LeetCode
//
//  Created by fate on 2024/10/8.
//

import Foundation

/**
 1436. 旅行终点站
 
 给你一份旅游线路图，该线路图中的旅行线路用数组 paths 表示，其中 paths[i] = [cityAi, cityBi] 表示该线路将会从 cityAi 直接前往 cityBi 。请你找出这次旅行的终点站，即没有任何可以通往其他城市的线路的城市。

 题目数据保证线路图会形成一条不存在循环的线路，因此恰有一个旅行终点站。
 */

extension Solution {
    
    func destCity(_ paths: [[String]]) -> String {

        if paths.isEmpty {
            return ""
        }
        var setA = Set<String>()
        var setB = Set<String>()
        for path in paths {
            
            let cityA = path.first!
            let cityB = path.last!
            
            setB.remove(cityA)
            if !setA.contains(cityB) {
                setB.insert(cityB)
            }
            
            setA.insert(cityA)
        }

        return setB.first!
    }
}
