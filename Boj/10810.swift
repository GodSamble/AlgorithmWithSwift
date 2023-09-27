//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/08.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0], m = input[1]
var basket = [Int](repeating: 0, count: n+1)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let start = input[0], end = input[1], num = input[2]
    basket.replaceSubrange(start...end, with: [Int](repeating: num, count: end - start + 1))
}

basket[1...].forEach { print($0, terminator: " ")}

// TODO: 배열 // [Int](repeating:, count: )
// TODO: 배열의 라이브러리 중 replaceSubrange 이어서...
// TODO: replaceSubrange(범위구간, with: [Int](repeating:,count:))

