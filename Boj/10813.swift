//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/15.
//

import Foundation

var arr : [Int] = []
let input = readLine()!.split(separator: " ").map{Int($0)!} // 5 4
let n = input[0]
let m = input[1]
var basket = [Int](0...n)
//for i in 1...n{ //M개 대로 원소 넣고
//    var num = i
//    arr.append(num)
//}

for _ in 0..<m{ //4번 스위칭 되는 동안에
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let i = input[0], j = input[1]
    basket.swapAt(i, j)
}

basket[1...].forEach { print($0, terminator: " ")}
