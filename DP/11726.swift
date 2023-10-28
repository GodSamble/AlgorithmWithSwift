//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/29/23.
//

import Foundation

//TODO: n= 1,2,3,4......    =>  1 2 3 5 8 피보나치수열 양상을 띔. dp[i] = (dp[i-1] + dp[i-2]) % 10001

let n = Int(readLine()!)!
var dp = [Int](repeating: 0, count: n+1)

if n == 1{
    print(1)
} else if n == 2{
    print(2)
} else {
    dp[1] = 1
    dp[2] = 2
    for i in 3..<n+1 {
        dp[i] = (dp[i-1] + dp[i-2]) % 10007 //TODO: 문제에서 10007로 나눈값 출력하라고 제시됨
    }
    print(dp[n])
}
