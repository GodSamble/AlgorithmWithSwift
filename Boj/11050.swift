//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/16/23.
//

import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!} // 5 2
// var input[0] , var input[1]
var result = 0
var a = input[0]
var b = input[1]


result = factorial(a) / (factorial(b) * factorial(a-b))


print(result)

func factorial(_ n: Int) -> Int { // TODO: 재귀함수 함수내에 바로, 자기자체함수 쓰는것.으로 => 팩토리얼 함수만듬
    if n == 0 {
        return 1
    }
    return n * factorial(n - 1)
}
