//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/19/23.
//

import Foundation

var num = readLine()!.split(separator: " ").map{Int($0)!}

var num1 = num[0]
var num2 = num[1]


for i in num1...num2 {
    if solution(i) == true {
        print(i)
    }
}

func solution(_ a: Int) -> Bool {
    if a == 1 {
        return false
    }
    for i in 2..<Int(sqrt(Double(a)) + 1) {
        if a % i == 0 {
            return false
        }
    }
    return true
}
