//
//  mauin.swift
//  Algorithm
//
//  Created by 고영민 on 11/7/23.
//

import Foundation

var T = Int(readLine()!)!
var cache = Array(repeating: (-1, -1), count: 41) // 중간 중간 저장하기 위한 배열의 이름을 작명시
// cache 추천!

for _ in 0..<T {
    var input = Int(readLine()!)!
    print(fibonacci(input).0, fibonacci(input).1)
}


func fibonacci(_ n : Int) -> (Int,Int) {
    if n == 0 {
        cache[n] = (1, 0)
    } else if n == 1 {
        cache[n] = (0, 1)
    }
    if cache[n].0 < 0 {
        cache[n] = (fibonacci(n - 2).0 + fibonacci(n - 1).0, fibonacci(n - 2).1 + fibonacci(n - 1).1)
    }
    return cache[n]
}
