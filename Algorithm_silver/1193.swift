//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/18.
//

import Foundation

let X = Int(readLine()!)!

var isTopToDown = true
var count = 0

OUTER: for x in 1...X {
    isTopToDown = x.isMultiple(of: 2) ? true : false
    
    for i in 1...x {
        count += 1
        if count == X {
            isTopToDown ? print("\(i)/\(x - i + 1)") : print("\(x - i + 1)/\(i)")
            break OUTER
        }
    }
}
