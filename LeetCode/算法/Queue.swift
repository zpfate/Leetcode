//
//  Queue.swift
//  LeetCode
//
//  Created by fate on 2024/7/23.
//

import Foundation


struct Queue<T> {
    
    // 数组用来存储数据元素
    fileprivate var data = [T]()
    
    // 构造方法
    public init() {}
    
    // 构造方法
    public init<S: Sequence>(_ elements: S) where S.Iterator.Element == T {
        data.append(contentsOf: elements)
    }
    
    // 将元素添加到队列的末尾
    mutating func offer(_ element: T) -> Void {
        data.append(element)
    }
    
    // 移除并返回队列的第一个元素
    mutating func poll() -> T? {
        return data.removeFirst()
    }
    
    // 返回队列中的第一个元素,但不会删除
    func peek() -> T? {
        return data.first
    }
    
    // 清空队列中所有元素
    mutating func clear() -> Void {
        data.removeAll()
    }
    
    // 获取队列中的元素个数
    public var count: Int {
        return data.count
    }
    
    // 返回或者设置队列的存储空间
    public var capactity: Int {
        get {
            return data.capacity
        }
        
        set {
            data.reserveCapacity(newValue)
        }
    }
    
    // 检查队列是否已满
    var isFull: Bool {
        return count == data.capacity
    }

    // 检查队列是否为空
    public var isEmpty: Bool {
        return data.isEmpty
    }
}
