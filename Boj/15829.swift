//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/12/23.
//

import Foundation

let mod = 1234567891

func calculateHash(_ input: String) -> Int {
    let r = 31
    let M = 1234567891
    var result = 0
    
    for (i, char) in input.enumerated() {
        let asciiValue = Int(char.asciiValue!) - 96
        let powerValue = power(r, i)
        result += (asciiValue * powerValue) % M
        result %= M
    }
    
    return result
}

func power(_ num: Int, _ pow: Int) -> Int {
    var powpow = num
    if pow == 0 {
        return 1
    } else if pow == 1 {
        return powpow % mod
    } else {
        for _ in 2...pow {
            powpow *= num
            powpow %= mod
        }
        return powpow
    }
}

// 입력 받기
let L = Int(readLine()!)!
let input = readLine()!

// 해시값 계산 및 출력
let hashValue = calculateHash(input)
print(hashValue)
