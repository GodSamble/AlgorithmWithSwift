//
//  25304.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/05.
//

import Foundation

let price = Int(readLine()!)!

let input = Int(readLine()!)!

var sum = 0

for _ in 1...input {
    var arr:[Int] = []
    
    arr = readLine()!.split(separator: " ").map{Int($0)!}
    sum += arr[0] * arr[1]
}

if (price == sum) {
    print("Yes")
} else{ print("No")}
