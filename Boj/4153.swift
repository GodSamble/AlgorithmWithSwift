//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/15/23.
//

import Foundation

//var exit : [Int] = [0, 0, 0]
//var input1 = readLine()!.split(separator: " ").map{Int($0)!}
//
//while input1 != exit {
//    var input = readLine()!.split(separator: " ").map{Int($0)!}
//    input.sort()
//    if input[2]*input[2]==input[0]*input[0]+input[1]*input[1]{
//        print("right")
//    }else {print("wrong")}
//}


while true {
    let inputs = readLine()!.split(separator: " ").map { Double(String($0))! }.sorted()
    let a = inputs[0]
    let b = inputs[1]
    let c = inputs[2]
    
    // a, b, c가 0 0 0이면 탈출
    guard a + b + c != 0 else { break }

    if pow(a, 2) + pow(b, 2) == pow(c, 2) {
        print("right")
    } else {
        print("wrong")
    }
}
