//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/26.
//

import Foundation
//653 375 1000 1000
//347
//x y w h


let input = readLine()!.split(separator: " ").map({Int($0)!})

var resA = input[2] - input[0]
var resB = input[3] - input[1]

if (resA < 0){
    resA = resA * -1
}

if (resB < 0){
    resB = resB * -1 // 음수인 경우의 예외처리
}

print(min(resA,resB,input[0],input[1]))

// 0 0 도 있어서 튜플 어케쓰지
// 절댓값 어케쓰지
