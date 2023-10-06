//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/10/06.
//

import Foundation

let n = Int(readLine()!)!
let k = Int(readLine()!)!

private func solution() {
    var left = 0
    var right = k
    var answer = 0

    while left <= right {
        let mid = (left + right) / 2
        var minCount = 0

        for i in 1..<n+1 {
            minCount += min(mid / i, n)
        }

        if minCount < k {
            left = mid + 1
        } else {
            answer = mid
            right = mid - 1
        }
    }

    print(answer)
}

solution()
