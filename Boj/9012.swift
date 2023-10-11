//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/12/23.
//

import Foundation
//TODO: Stack 쓰는 기본적인 문제 (()()) Yes , (( No 이런 문제임.
func solution() {
    let input = readLine()!
    var stack = [Character]()
    
    for i in input {
        if stack.isEmpty {
            stack.append(i)
            continue
        }
        
        if i == ")" && stack.last! == "(" {
            stack.removeLast()
        } else {
            stack.append(i)
        }
    }
    print(stack.isEmpty ? "YES" : "NO")
}

var N = Int(readLine()!)!
for _ in 0..<N { solution() }


