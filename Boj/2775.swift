//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/22/23.
//

import Foundation

var testCase = Int(readLine()!)!

for _ in 0..<testCase {
    var a = Int(readLine()!)!
    var b = Int(readLine()!)!
    print(solution(a,b))
}


func solution(_ f :Int, _ r :Int) -> Int {
    if r == 1 {
        return 1
    }
    if f == 0 {
        return r
    }
    return solution(f - 1, r) + solution(f, r - 1)
}
