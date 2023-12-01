//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 12/1/23.
//

import Foundation

var dp = [1,1,1,2,2]
let t = Int(readLine()!)!
for _ in 5..<100 {
    dp.append(dp.last! + dp[dp.count-5])
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    print(dp[n-1])
}
