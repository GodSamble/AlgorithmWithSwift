//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/10/23.
//

import Foundation

var x = Int(readLine()!)!
var num = 666
var cnt = 1

func devilNumCheck(n: Int) -> Bool {
    var n = n
    while n >= 666 {
        if n % 1000 == 666 {
            return true
        }
        n /= 10
    }
    return false
}

while cnt != x {
    num += 1
    if devilNumCheck(n: num) {
        cnt += 1
    }
}

print(num)
