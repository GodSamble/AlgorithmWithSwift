//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/28.
//

import Foundation

let count = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map({Int(String($0))!})
let B = readLine()!.split(separator: " ").map({Int(String($0))!})

var A_sort = A.sorted(by: >)
var B_sort = B.sorted(by: <)

var sum = 0

for _ in 0..<count {
    sum += A_sort.removeLast() * B_sort.removeLast()
    // 최솟값과 최댓값을 빼오고 그 값은 삭제함.
    // 반복문이기 때문에 매번 최대와 최소의 곱을 sum에 새로고침함
}

print(sum)
