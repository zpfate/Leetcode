//
//  Solution2024.swift
//  LeetCode
//
//  Created by fate on 2024/9/2.
//

import Foundation

/**
 2024. 考试的最大困扰度
 https://leetcode.cn/problems/maximize-the-confusion-of-an-exam/description/
 
 一位老师正在出一场由 n 道判断题构成的考试，每道题的答案为 true （用 'T' 表示）或者 false （用 'F' 表示）。老师想增加学生对自己做出答案的不确定性，方法是 最大化 有 连续相同 结果的题数。（也就是连续出现 true 或者连续出现 false）。

 给你一个字符串 answerKey ，其中 answerKey[i] 是第 i 个问题的正确结果。除此以外，还给你一个整数 k ，表示你能进行以下操作的最多次数：

 每次操作中，将问题的正确答案改为 'T' 或者 'F' （也就是将 answerKey[i] 改为 'T' 或者 'F' ）。
 请你返回在不超过 k 次操作的情况下，最大 连续 'T' 或者 'F' 的数目。
 */

extension Solution {
    
    func maxConsecutiveAnswers(_ answerKey: String, _ k: Int) -> Int {
        
        let chars = Array(answerKey)
        var res = 0
        
        return max(maxConsecutiveChar(chars, k, "T"), maxConsecutiveChar(chars, k, "F"))
        
    }
    
    private func maxConsecutiveChar(_ chars: [Character], _ k: Int, _ char: Character) -> Int {
        
        let n = chars.count
        var ans = 0
        
        var sum = 0
        var left = 0
        var right = 0
        
        while right < n {
            
            sum += chars[right] != char ? 1 : 0
            
            while sum > k {
                sum -= chars[left] != char ? 1 : 0
                left += 1
            }
            ans = max(ans, right - left + 1)
            right += 1
        }
        return ans
    }
}
