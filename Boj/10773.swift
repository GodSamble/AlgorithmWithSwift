//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/22/23.
//

import Foundation

var result = 0
var testCase = Int(readLine()!)!
var stack : [Int] = []

for _ in 0..<testCase {
    var input = Int(readLine()!)!
    
    if input == 0 {
        stack.popLast() // 최근에 추가된 수를 지웁니다.
    } else {
        stack.append(input) // 0이 아닌 경우 스택에 추가합니다.
    }
}

// 스택에 남아있는 모든 값을 더합니다.
result = stack.reduce(0, +)

print(result)
