//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/12/23.
//

//TODO: 유클리드 호제법으로 '최대공약수', '최소공배수' 구하는 문제.
//TODO: Python언어의 리턴 보내는거랑, Foundation 내장함수 max() 사용하는 포인트 볼 것.
import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!}

var max = input.max()!
var min = input.min()!
var r = max % min

while r > 0 {
    max = min
    min = r
    r = max % min
}

print(min)
print(input[0]*input[1] / min)
