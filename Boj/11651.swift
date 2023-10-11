//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/12/23.
//

import Foundation

var n = Int(readLine()!)!
var arr = [(Int, Int)]()

for _ in 0..<n {
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    arr.append((input[0], input[1]))
}

arr.sort(by: {$0.0 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1})

for i in 0..<n {
    print("\(arr[i].0) \(arr[i].1)")
}
