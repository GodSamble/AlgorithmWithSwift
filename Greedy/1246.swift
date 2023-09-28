//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/28.
//

import Foundation

//TODO: 1. i번째 고객은 앞순보다 이하의 가격으로만 구매가능 2.


var input = readLine()!.split(separator: " ")

var n = Int(input[0])!
var m = Int(input[1])!

var devidedPrice = 0
var res = 0

var arr : [Int] = [] // arr 가 의미하는 것은 변동되는 달걀 책정가격 배열
for _ in 0..<m {
    let price = Int(readLine()!)!
    arr.append(price)
}
arr = arr.sorted(by: <)

for i in 0..<m {
    let egg = min(m - i , n)
  
    if res < arr[i] * egg {
        res = arr[i] * egg
        devidedPrice = arr[i]
    }
}



print("\(devidedPrice) \(res)")
