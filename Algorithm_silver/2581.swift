//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/25.
//

import Foundation

var m = Int(readLine()!)! // 60
var n = Int(readLine()!)! // 100
var arrOfPrime : [Int] = []
var sumOfPrime = 0

for i in m...n { // 60 ~ 100
    if i == 1 {
        continue
    } else {
        var isPrime = true
        for j in 2..<i { // arr[i] -> 2~59
            if i % j == 0 {
                isPrime = false
                break
            }
        }
        if isPrime {
            arrOfPrime.append(i)
        }
    }
}

if arrOfPrime.isEmpty {
    print(-1)
} else {
    for k in 0..<arrOfPrime.count {
        sumOfPrime += arrOfPrime[k]
    }
    print(sumOfPrime)
    print(arrOfPrime[0])
}
