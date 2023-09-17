//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/18.
//

import Foundation
//2720 거스름돈 문제 : 그리디 알고리즘

var input = Int(readLine()!)!

for _ in 0..<input {
  
    let temp = Int(readLine()!)!
    let a = temp / 25
    let b = (temp % 25) / 10
    let c = ((temp % 25) % 10) / 5
    let d = (((temp % 25) % 10) % 5) / 1
    print(a, b, c, d)
}


//for i in 0..<input {
//    print("\(a) \(b) \(c) \(d)")
//}
