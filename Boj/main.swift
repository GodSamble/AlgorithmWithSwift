//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/11/23.
//

import Foundation

var n = Int(readLine()!)!
var people = [(Int, Int)]()
var ranks = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    people.append((input[0], input[1]))
}

for i in people {
    var rank = 1
    for j in people {
        if i.0 < j.0 && i.1 < j.1 {
            rank += 1
        }
    }
    ranks.append(rank)
}
ranks.forEach { rank in
    print(rank, terminator: " ")
}
