//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/27/23.
//

import Foundation


let input = readLine()!.split(separator : " " ).map{Int(String($0))!}
let N = input[0], M = input[1]

let array = readLine()!.split(separator : " " ).map{Int(String($0))!}
var sums = [0]
var sum = 0
array.forEach{
    sum += $0
    sums.append(sum)
}

for _ in 0..<M {
    let input2  = readLine()!.split(separator : " " ).map{Int(String($0))!}
    let left = input2[0], right = input2[1]
    print(sums[right] - sums[left-1])
}
