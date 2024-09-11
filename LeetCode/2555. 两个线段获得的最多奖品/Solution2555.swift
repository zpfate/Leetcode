//
//  Solution2555.swift
//  LeetCode
//
//  Created by fate on 2024/9/11.
//

import Foundation

/**
 2555. 两个线段获得的最多奖品
 https://leetcode.cn/problems/maximize-win-from-two-segments/description/
 
 在 X轴 上有一些奖品。给你一个整数数组 prizePositions ，它按照 非递减 顺序排列，其中 prizePositions[i] 是第 i 件奖品的位置。数轴上一个位置可能会有多件奖品。再给你一个整数 k 。

 你可以选择两个端点为整数的线段。每个线段的长度都必须是 k 。你可以获得位置在任一线段上的所有奖品（包括线段的两个端点）。注意，两个线段可能会有相交。

 比方说 k = 2 ，你可以选择线段 [1, 3] 和 [2, 4] ，你可以获得满足 1 <= prizePositions[i] <= 3 或者 2 <= prizePositions[i] <= 4 的所有奖品 i 。
 请你返回在选择两个最优线段的前提下，可以获得的 最多 奖品数目。
 */

extension Solution {
    /// dp[right] 表示右端点不超过 prizePositions[right] 的线段可以覆盖最大奖品数量
    /// 如果不选择位于 prizePositions[right] 处的奖品，线段的右端点一定不超过 prizePositions[right−1]，当前可以覆盖奖品的最大数量即为：dp[right−1]，此时 dp[right]=dp[right−1]；
    /// 如果选择位于 prizePositions[right] 处的奖品，由于线段长度为 k，需要移动左侧指针 left，使得满足 prizePositions[right]−prizePositions[left]≤k 为止，当前可以覆盖的最大奖品数量即为：right−left+1，此时 dp[right]=right−left+1；
    /// dp[right] = max(dp[right - 1],  right - left + 1)
    func maximizeWin(_ prizePositions: [Int], _ k: Int) -> Int {
        
        let n = prizePositions.count
        var dp = [Int](repeating: 0, count: n + 1)
        var ans = 0
        
        var left = 0
        
        for right in 0..<n {
            
            while prizePositions[right] - prizePositions[left] > k {
                left += 1
            }
            ans = max(dp[right], right - left + 1 + dp[left])
            dp[right + 1] = max(dp[right], right - left + 1)
        }
        return ans
    }
}
