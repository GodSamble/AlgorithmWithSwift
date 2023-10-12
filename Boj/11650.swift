//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/13/23.
//

import Foundation

var n = Int(readLine()!)!
var arr : [(Int , Int)] = []

for _ in 0..<n {
    let input = (readLine()!.split(separator: " ").map{Int($0)!})
    arr.append((input[0],input[1]))
}

arr.sort(by: {
    $0.0 == $1.0 ? $0.1 < $1.1 : $0.0 < $1.0
})
               
for a in 0..<n {
    print("\(arr[a].0) \(arr[a].1)")
}
