//
//  main.swift
//  LeetCode
//
//  Created by Twisted Fate on 2022/9/2.
//

import Foundation

let solution = Solution()

// ***** 排序 *****
// var nums = [3, 6, 8, 10, 1, 1, 2, 7, 4, 5, 9]
// Sort.quick(&nums, 0, nums.count - 1)
// InsertSort.sort(&nums)
// print(nums)


//4.寻找两个正序数组的中位数
//print("4.寻找两个正序数组的中位数:\(solution.findMedianSortedArrays([1, 3], [2, 4]))")

// 5. 最长回文子串
print("5. 最长回文子串:\(solution.longestPalindrome("ccd"))")


//14.最长公共前缀
//print("14.最长公共前缀:\(solution.longestCommonPrefix(["dog","racecar","car"]))")

// 18.四数之和
//print("四数之和: \(Solution.fourSum([2, 2, 2, 2, 2, 2], 8))")

// 34. 在排序数组中查找元素的第一个和最后一个位置
//print("34. 在排序数组中查找元素的第一个和最后一个位置:\(solution.searchRange([8,8], 8))")

// 35.搜索插入位置
//print("35.搜索插入位置: \(solution.searchInsert([1,3,5,6], 2))")

// [2,1,5,6,2,3]
// 84. 柱状图中最大的矩形
//print("84. 柱状图中最大的矩形: \(solution.largestRectangleArea([2,1,5,6,2,3]))")

// 88. 合并两个有序数组
var arr1 = [1,2,3,0,0,0]
let arr2 = [2,5,6]
solution.merge(&arr1, 3, arr2, 3)
// 150.逆波兰表达式
//print("150.逆波兰表达式:\(solution.evalRPN(["4","13","5","/","+"]))")

// 154. 寻找旋转排序数组中的最小值 II
//print("154. 寻找旋转排序数组中的最小值 II: \(solution.findMin([3,4,5,1,2]))")

// 198. 打家劫舍
//print("198.打家劫舍: \(solution.rob2([ 2, 1,1, 2]))")


// 238.除自身以外数组的乘积
//Solution.productExceptSelf([1, 2, 3, 4])

// 278. 第一个错误的版本
//print("278.第一个错误的版本: \(solution.firstBadVersion(1))")


// 303. 区域和检索 - 数组不可变
//solution.retrieveSum()


//print("======\(solution.maximalSquare([["0","1"],["1","0"]]))")
// 496. 下一个更大元素 I
//print("496. 下一个更大元素 I:\(solution.nextGreaterElement([2, 4], [1, 2, 3, 4]))")


// 704.二分查找
//print("704.二分查找: \(solution.search([-1,0,3,5,9,12], 13))")


// 1588.所有奇数长度子数组的和
//print("1588: \(solution.sumOddLengthSubarrays([1,4,2,5,3]))")


/// ********排序算法 ******
//fileprivate var arr = [10, 2, 5, 3, 6, 1]
//BubbleSort.sort(arr)
//print("=============================")
//BubbleSort.sort2(arr)
//print("=============================")

//print(InsertSort.sort(arr))
//print(SelectSort.sort(arr))


//var v1: ListNode? = ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9))))))
//var v2: ListNode? = ListNode(9, ListNode(9, ListNode(9, ListNode(9))))
//Solution3.lengthOfLongestSubstring("dvdf")


//print(Solution9.isPalindrome(121))

//let result = Solution13().romanToInt("V")
//print(result)

//var strs = ["test", "123", "abc", "longest", "prefix", "897"]

//print(strs.sorted())


//let longestCommonPrefix = Solution14().longestCommonPrefix("")


//var nums1 = [1, 3, 5,]
//let nums2 = [2, 4, 6,]
//Solution88().mergeAA(&nums1,3,  nums2, 3)

//print(Solution739().dailyTemperatures([73,74,75,71,69,72,76,73]))

//let matrix = [[1]], target = 1

//print(Solution74().searchMatrix(matrix, target))
//print(Solution905().sortArrayByParity([3, 1, 2, 4]))


//var v876: ListNode? = ListNode(7, ListNode(2, ListNode(4, ListNode(3))))
//var v875: ListNode? = ListNode(5, ListNode(6, ListNode(4)))


//canPartition([1, 5, 10, 6])

//print("当前借\(solution.detectCapitalUse("FkkLG"))")


//print("岛屿数量:\(solution.numIslands([["1","1","1","1","0"],["1","1","0","1","0"],["1","1","0","0","0"],["0","0","0","0","0"]]))")

//print("2101. 引爆最多的炸弹:\(solution.maximumDetonation([[1,2,3],[2,3,1],[3,4,2],[4,5,3],[5,6,4]]))")


//print("2741. 特别的排列: \(solution.specialPerm([1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192]))")
//print("111111====\(solution.smallestString("cbabc"))")

//solution.maximumPrimeDifference([1,7])

//print("lllllll:\(solution.incremovableSubarrayCountII([1, 2, 3, 4]))")

//print("2974. 最小数字游戏:\(solution.numberGame([5, 4, 2, 3]))")
//print("3096. 最小数字游戏:\(solution.minimumLevels([0, 0, 0]))")

//print("3099:\(solution.sumOfTheDigitsOfHarshadNumber(1000))")

//solution.minimumOperations("2245047")

//solution.calPoints(["5","2","C","D","+"])

print("2961:双模幂运算: \(solution.getGoodIndices([[6,1,1,4]], 2))")

func myPow(_ x: Double, _ n: Int) -> Double {

    var res:Double = 1
    if n == 0 {
        return 1
    }
    for i in 1...n {
        res *= x
    }

    if n < 0 {
        return 1 / res
    }
    return res
}

myPow(2, -2)

let str = "Hello, 👋🌍!"

// 获取索引
let startIndex = str.startIndex
let endIndex = str.endIndex

// 获取指定位置的字符
let char = str[str.index(startIndex, offsetBy: 7)]
print(char)  // 输出: "👋"

// 遍历字符串中的每个字符
for (index, char) in str.enumerated() {
    print("Character at \(index): \(char)")
}




