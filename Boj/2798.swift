//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/16/23.
//

import Foundation

//TODO: 브루트포스 알고리즘 => 경우의 수 다 따져보는 문제

var input = readLine()!.split(separator: " ").map{Int($0)!}

var a = input[0] // 5
var b = input[1] // 300
var result = 0

var arr = readLine()!.split(separator: " ").map{Int($0)!} // 102 203 210 130 45


for i in 0..<a {
    for j in i+1..<a {
        for k in j+1..<a {
            if arr[i] + arr[j] + arr[k] <= b {
                if arr[i] + arr[j] + arr[k] > result {
                    result = arr[i] + arr[j] + arr[k]
                }
                
            }
        }
    }
}
//TODO: 경우의 수의 경우

print(result)
