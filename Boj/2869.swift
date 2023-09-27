//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/21.
//

import Foundation

// A B V
// + - height
let count = 0
let input = readLine()!.split(separator: " ").map{Double($0)!}
let a = input[0], b = input[1], v = input[2]

print(Int(ceil((v - b) / (a - b))))

// TODO: 더블 자료형으로 매핑한 것들은, ceil()를 통해 반올림 작업을 진행할 수 있다.
