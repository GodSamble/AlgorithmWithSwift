//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/14/23.
//

import Foundation

let x = Int(readLine()!)!
var xArr = readLine()!.split(separator: " ").map{Int($0)!}
xArr.sort()

let y = Int(readLine()!)!
var yArr = readLine()!.split(separator: " ").map{Int($0)!}

func binarySearch(_ arr: [Int], _ target: Int) -> Int {
    var start = 0
    var end = arr.count - 1
    
    while start <= end {
        let mid = ( start + end ) / 2
        if xArr[mid] == target {
            return 1
        }else if xArr[mid] > target {
            end = mid - 1
        }else if xArr[mid] < target {
            start = mid + 1
        }
    }
    return 0
}

for i in 0..<y {
    print(binarySearch(xArr, yArr[i]))
}
