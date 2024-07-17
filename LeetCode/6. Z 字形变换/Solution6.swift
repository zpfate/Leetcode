//
//  Solution6.swift
//  LeetCode
//
//  Created by fate on 2024/7/17.
//

import Foundation

/**
 6. Z 字形变换
 https://leetcode.cn/problems/zigzag-conversion/description/
 
 将一个给定字符串 s 根据给定的行数 numRows ，以从上往下、从左到右进行 Z 字形排列。

 比如输入字符串为 "PAYPALISHIRING" 行数为 3 时，排列如下：

 P   A   H   N
 A P L S I I G
 Y   I   R
 之后，你的输出需要从左往右逐行读取，产生出一个新的字符串，比如："PAHNAPLSIIGYIR"。

 请你实现这个将字符串进行指定行数变换的函数：

 string convert(string s, int numRows);
 */

extension Solution {
    
    func convert(_ s: String, _ numRows: Int) -> String {
        
        if s.isEmpty || numRows <= 1 {
            return s
        }
        
        var strs = [String](repeating: "", count: numRows)
        
        for (index, char) in s.enumerated() {
            
            
            let num = index % (numRows * 2 - 2)
            if num < numRows{
                strs[num].append(char)
            } else {
                strs[numRows * 2 - 2 - num].append(char)
            }
        }
        
        return strs.joined()
        
    }
}
