//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/11.
//

import Foundation

let input = Int(readLine()!)!
for i in 1...input {
    let star = String(repeating: " ", count: input - i) + String(repeating: "*", count: 2 * i - 1)
    print(star)
}

for i in 1..<input {
    let star = String(repeating: " ", count: i) + String(repeating: "*", count: 2 * (input - i) - 1)
    print(star)
}

//스페이스 4번 별 하나
//스페이스 3번 별 세개
//스페이스 2번 별 다섯개
//스페이스 1번 별 일곱개
//별 9개
//스페이스 1번 별 일곱개
//스페이스 2번 별 다섯개
//스페이스 3번 별 세개
//스페이스 4번 별 하나
