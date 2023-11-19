//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/20/23.
//

import Foundation

let input = readLine()!.split(separator: " ")
let N = Int(input[0])!
let M = Int(input[1])!

var dic: [String:Int] = [:]
var arr = Array(repeating: "", count: N+1)

for i in 1...N {
    let name = readLine()!
    dic[name] = i
    arr[i] = name
}

for _ in 1...M {
    let num = readLine()!
    if num.allSatisfy{ $0.isNumber } {
        let idx = Int(num)!
        print(arr[idx])
    } else {
        print(dic[num]!)
    }
}
