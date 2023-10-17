//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/17/23.
//

import Foundation

//이분탐색알고리즘


var input = readLine()!.split(separator: " ").map{Int($0)!}

var K = input[0]
var N = input[1]
var arr = [Int]()

for _ in 0..<K {
    arr.append(Int(readLine()!)!)
}

var maxArr = arr.max()!
var start = 1
var end = maxArr

while start <= end {
    var count = 0
    let mid = (start + end) / 2
    for i in 0..<K {
        count += (arr[i] / mid)
    }
    if count < N {
        end = mid - 1
    }else {
        start = mid + 1
    }
}
print(start - 1)
