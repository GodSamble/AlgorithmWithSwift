//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/29.
//

import Foundation

let input = Array(readLine()!).map { Int(String($0))! }

var zeroCount = 0 // 0 블록의 개수
var oneCount = 0 // 1 블록의 개수

if input[0] == 0 { zeroCount += 1 }
else { oneCount += 1 }

for i in 1..<input.count {
    if input[i] != input[i-1] {
        if input[i] == 0 { zeroCount += 1 }
        else { oneCount += 1 }
    }
}

let result = min(zeroCount, oneCount)
print(result)




