//
//  Solution676.swift
//  LeetCode
//
//  Created by fate on 2024/8/12.
//


/**
 676. 实现一个魔法字典
 https://leetcode.cn/problems/implement-magic-dictionary/description/
 
 设计一个使用单词列表进行初始化的数据结构，单词列表中的单词 互不相同 。 如果给出一个单词，请判定能否只将这个单词中一个字母换成另一个字母，使得所形成的新单词存在于你构建的字典中。

 实现 MagicDictionary 类：

 MagicDictionary() 初始化对象
 void buildDict(String[] dictionary) 使用字符串数组 dictionary 设定该数据结构，dictionary 中的字符串互不相同
 bool search(String searchWord) 给定一个字符串 searchWord ，判定能否只将字符串中 一个 字母换成另一个字母，使得所形成的新字符串能够与字典中的任一字符串匹配。如果可以，返回 true ；否则，返回 false 。
 */
import Foundation

class MagicDictionary {

    private var _dict: [String]?
    
    init() {

    }
    
    func buildDict(_ dictionary: [String]) {
        _dict = dictionary
    }
    
    func search(_ searchWord: String) -> Bool {
        
        for str in _dict! {

            if str == searchWord {
                continue
            }
            
            var diff = 0
            let len = str.count
            let wordLen = searchWord.count
            
            guard wordLen == len else {
                continue
            }
            
            let strChars = Array(str)
            let wordChars = Array(searchWord)
            
            for i in 0..<strChars.count {
                
                if strChars[i] != wordChars[i] {
                    diff += 1
                }
            }
            
            if diff == 1 {
                return true
            }
            
        }
        return false
    }
}
