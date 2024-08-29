//
//  Solution690.swift
//  LeetCode
//
//  Created by fate on 2024/8/26.
//

import Foundation

/**
 690. 员工的重要性
 https://leetcode.cn/problems/employee-importance/description/
 
 你有一个保存员工信息的数据结构，它包含了员工唯一的 id ，重要度和直系下属的 id 。

 给定一个员工数组 employees，其中：

 employees[i].id 是第 i 个员工的 ID。
 employees[i].importance 是第 i 个员工的重要度。
 employees[i].subordinates 是第 i 名员工的直接下属的 ID 列表。
 给定一个整数 id 表示一个员工的 ID，返回这个员工和他所有下属的重要度的 总和。
 */


extension Solution {
    
    func getImportance(_ employees: [Employee], _ id: Int) -> Int {
        guard let current = employees.first(where: {$0.id == id}) else {return 0}
        let subEmployees = employees.filter { current.subordinates.contains($0.id)}
        return subEmployees.reduce(current.importance) { $0 + getImportance(employees, $1.id)}
    }
    
//    ///  DFS
//    func getImportance(_ employees: [Employee], _ id: Int) -> Int {
//        
//        if employees.isEmpty {
//            return 0
//        }
//        
//        var res = 0
//        var dict = [Int: Employee]()
//        for employee in employees {
//            dict[employee.id] = employee
//        }
//        
//        var current = dict[id]
//        if current == nil {
//            return 0
//        }
//        
//        var queue = [Int]()
//        queue.append(current!.id)
//        
//        while !queue.isEmpty {
//            
//            let id = queue.removeFirst()
//            let employee = dict[id]!
//            res += employee.importance
//            if !employee.subordinates.isEmpty {
//                queue.append(contentsOf: employee.subordinates)
//            }
//        }
//        return res
//    }
}

public class Employee {
 public var id: Int
 public var importance: Int
 public var subordinates: [Int]
 public init(_ id: Int, _ importance: Int, _ subordinates: [Int]) {
     self.id = id
     self.importance = importance
     self.subordinates = subordinates
 }
}
