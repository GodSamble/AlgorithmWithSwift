//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/27.
//

import Foundation

var coords: [(Int, Int)] = []

var input = Int(readLine()!)!
for _ in 0..<input {
    let coord = readLine()!.split(separator: " ").map{Int($0)!}
    coords.append((coord[0], coord[1]))
} // 딕셔너리에 다 넣었고,

var minX = Int.max
var maxX = Int.min
var minY = Int.max
var maxY = Int.min

for i in coords {
    minX = min(minX, i.0) // i.0가 의미하는 것은 x좌표
    maxX = max(maxX, i.0)
    minY = min(minY, i.1) // i.1가 의미하는 것은 y좌표
    maxY = max(maxY, i.1)
}


let width = maxX - minX
let height = maxY - minY
let area = width * height
print(area)
