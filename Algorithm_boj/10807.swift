//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/05.
//

import Foundation

let count = readLine()!
var input = readLine()!.split(separator: " ").map{Int($0)!}
let v = readLine()!
var result = 0

for i in input {
    if String(i) == v {
        result += 1
    }
}

print(result)
//11
//1 4 1 2 4 2 4 2 3 4 4
//2
