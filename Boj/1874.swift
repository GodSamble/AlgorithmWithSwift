//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/18/23.
//

import Foundation

//스택
var n = Int(readLine()!)!
var stack : [Int] = []
var result : [String] = []
var count = 1

for _ in 0..<n {
    var num = Int(readLine()!)!
    
    while num >= count {
        stack.append(count)
        count += 1
        result.append("+")
    }
    
    if stack.last == num {
        stack.popLast()
        result.append("-")
    } else {
        print("NO")
        exit(0)
    }
}

print(result.joined(separator: "\n"))
