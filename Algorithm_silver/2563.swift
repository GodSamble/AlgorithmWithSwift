//
//  File.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/07.
//

import Foundation

let n = Int(readLine()!)!

var result = 0
var paper: [[Int]] = Array(repeating: [Int](repeating: 0, count: 100), count: 100)
for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    let x = line[0]
    let y = line[1]
    
    for i in x..<x+10 {
        for j in y..<y+10 {
            paper[i][j] = 1
        }
    }
}
for row in paper where row.contains(1) {
    for i in 0..<row.count {
        if row[i] == 1 {
            result += 1
        }
    }
}

print(result)
