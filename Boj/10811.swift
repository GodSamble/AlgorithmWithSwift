//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/15.
//

import Foundation
 //10811

let input = readLine()!.split(separator: " ").map{Int($0)!} // 5 4
let n = input[0], m = input[1] // 4
var basket = [Int](0...n)

for _ in 0..<m { //5개가 반복되는 동안
    var input = readLine()!.split(separator: " ").map{Int($0)!} //
    let i = input[0], j = input[1] //
//    let under = basket[i...j].reversed()
//    basket.replaceSubrange(i...j, with: under)
    basket.replaceSubrange(i...j, with: basket[i...j].reversed())
}

basket[1...].forEach { print($0, terminator: " ")}

//깨달은 점 : basket[i...j].reversed() 이렇게 구간을 정해주어야하는구나
