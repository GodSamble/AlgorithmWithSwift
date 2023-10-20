//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/20/23.
//

import Foundation

let n = Int(readLine()!)!
var result = 0

for i in 1..<n {
    if getDecompositionSum(i) == n {
        result = i
        break
    }
}

print(result)

func getDecompositionSum(_ number: Int) -> Int {
    var sum = number
    var temp = number
    
    while temp > 0 {
        sum += temp % 10
        temp /= 10
    }
    
    return sum
}
