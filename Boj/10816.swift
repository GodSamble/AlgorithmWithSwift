//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/16/23.
//

import Foundation

// TODO: 이진탐색 접근 혹은 Dictionary 를 이용해서 풀어야함
// TODO: 이 문제의 경우 시간초과가 되지않기 위해 더 빠른 딕셔너리를 사용했다.

/*
 10
 6 3 2 10 10 10 -10 -10 7 3
 8
 10 9 -5 2 3 4 5 -10
 */

var num1 = Int(readLine()!)!
var arr1 = readLine()!.split(separator: " ").map{Int($0)!}
var num2 = Int(readLine()!)
var arr2 = readLine()!.split(separator: " ").map{Int($0)!}
var dict = [Int : Int]()
var result: [Int] = []

arr1.sort()

for i in arr1 {
    if dict.keys.contains(i) {
        dict[i]! += 1
    } else {
        dict[i] = 1
    }
}

for j in arr2{
    if dict.keys.contains(j) {
        result.append(dict[j]!)
    }else {
        result.append(0)
    }
}

print(result.map{String($0)}.joined(separator: " "))
