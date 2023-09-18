//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/18.
//

import Foundation

let n = Int(readLine()!)! // 13

var count = 1
var sum = 1

for i in 0..<n {
    if n == 1 {
        print("\(count)")
        break
    }
    if n<=sum {
        print("\(count)")
        break
    }
    sum += 6 * i
    count += 1
}
