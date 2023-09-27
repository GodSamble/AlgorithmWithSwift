//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/11.
//

import Foundation

let input = readLine()!.map{String($0)} //String
let length: Int = input.count
var check: Bool = true

for i in 0..<length/2 { // 절반만 비교해도 됨.
    if input[i] == input[length - 1 - i] {
        continue
    }
    else {
        check = false
        break
    }
}

if check {
    print(1)
}
else {
    print(0)
}
