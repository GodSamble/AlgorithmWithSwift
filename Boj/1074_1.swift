//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/23/23.
//

import Foundation


// TODO: 재귀로 풀었을떄



func sol(_ N: Int, _ r: Int, _ c: Int) -> Int {
    if N == 0 {
        return 0
    }
    
    return 2 * (r % 2) + (c % 2) + 4 * sol(N-1, r/2, c/2)
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let r = input[1]
let c = input[2]

let result = sol(N, r, c)
print(result)
