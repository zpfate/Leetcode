//
//  Solution712.swift
//  LeetCode
//
//  Created by fate on 2024/7/15.
//

import Foundation

/**
 721. 账户合并
 https://leetcode.cn/problems/accounts-merge/description/
 
 给定一个列表 accounts，每个元素 accounts[i] 是一个字符串列表，其中第一个元素 accounts[i][0] 是 名称 (name)，其余元素是 emails 表示该账户的邮箱地址。

 现在，我们想合并这些账户。如果两个账户都有一些共同的邮箱地址，则两个账户必定属于同一个人。请注意，即使两个账户具有相同的名称，它们也可能属于不同的人，因为人们可能具有相同的名称。一个人最初可以拥有任意数量的账户，但其所有账户都具有相同的名称。

 合并账户后，按以下格式返回账户：每个账户的第一个元素是名称，其余元素是 按字符 ASCII 顺序排列 的邮箱地址。账户本身可以以 任意顺序 返回。
 */

extension Solution {
    
    func accountsMerge(_ accounts: [[String]]) -> [[String]] {
        
        if accounts.isEmpty {
            return []
        }
        
        /// 保存邮箱总长度以及名称
        var emailIndex = [String: Int]()
        var emailName = [String: String]()
        var emailCount = 0
        
        /// 遍历
        for account in accounts {
            let name = account.first
            let len = account.count
            for i in 1..<len {
                let email = account[i]
                if !emailIndex.keys.contains(email) {
                    emailIndex[email] = emailCount
                    emailCount += 1
                    emailName[email] = name
                }
            }
        }
        
        
        
        /// 创建并查集以及合并
        let uf = UnionFind(emailCount)
        for account in accounts {
            let firstEmail = account[1]
            let firstIndex = emailIndex[firstEmail]
            let len = account.count
        }
        
        return []
    }
}
