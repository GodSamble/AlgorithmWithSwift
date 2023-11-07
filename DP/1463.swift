//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/7/23.
//

import Foundation


//X가 3으로 나누어 떨어지면, 3으로 나눈다.
//X가 2로 나누어 떨어지면, 2로 나눈다.
//1을 뺀다.

// MARK: DP 동적 프로그래밍

func solution() -> Int{
    let n = Int(readLine()!)!
    if n == 1 {
        return 0
    } else if n == 2 {
        return 1
    } else if n == 3 {
        return 1
    }
    
    var dp: [Int] = [Int](repeating: 0, count: n+1)
    dp[1] = 0
    dp[2] = 1
    dp[3] = 1
    
    for i in 4...n{
        dp[i] = dp[i-1] + 1
        if i % 2 == 0{
            dp[i] = min(dp[i], dp[i/2] + 1)
        }
        if i % 3 == 0 {
            dp[i] = min(dp[i], dp[i/3] + 1)
        }
    }
    return dp[n]
}

print(solution())
