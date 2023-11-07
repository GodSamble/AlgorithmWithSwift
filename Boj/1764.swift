//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/6/23.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
var set1 = Set<String>()
var set2 = Set<String>()

for _ in 0..<input[0] {
    set1.insert(readLine()!)
}

for _ in 0..<input[1] {
    set2.insert(readLine()!)
}

let arr = set1.intersection(set2).sorted()

print(arr.count)
print(arr.joined(separator: "\n"))
