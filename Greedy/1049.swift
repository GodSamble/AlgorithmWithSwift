//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/28.
//

import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!}
var n = input[0]
var m = input[1]
var totalPrice = 0
var minPackagePrice = Int.max
var minSinglePrice = Int.max

for _ in 0..<m {
    let price = readLine()!.split(separator: " ").map{Int($0)!}
    minPackagePrice = min(minPackagePrice, price[0])
    minSinglePrice = min(minSinglePrice, price[1])
}


if minPackagePrice > minSinglePrice*6 {
    totalPrice += n * minSinglePrice
}else {
    totalPrice += (n/6) * minPackagePrice
}

if (n % 6) * minSinglePrice > minPackagePrice {
    totalPrice += minPackagePrice
}else {
    totalPrice += (n % 6) * minSinglePrice
}

print(totalPrice)
