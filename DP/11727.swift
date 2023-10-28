//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/29/23.
//

import Foundation

let n = Int(readLine()!)!
var dp = [Int](repeating: 0, count: 1001) // TODO: stride구문 사용해서 n+1 기재 시 런타임 에러 발생해서, 1001이라는 임의의 고정값 넣음.

dp[1] = 1
dp[2] = 3
for i in stride(from:3, through: n, by: 1) {
    dp[i] = (dp[i-1] + dp[i-2] + dp[i-2]) % 10007
}
print(dp[n])
