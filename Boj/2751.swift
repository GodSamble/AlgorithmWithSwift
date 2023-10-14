//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/14/23.
//

import Foundation

var a = Int(readLine()!)!
var aArr : [Int] = []

for _ in 0..<a {
    aArr.append(Int(readLine()!)!)
}
aArr.sort() // 11222345

for i in 0..<a {
    print(aArr[i])
}
