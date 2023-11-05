//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/5/23.
//

import Foundation

var n = Int(readLine()!)!
var matrix = [[Character]]()
var matrixRB = matrix
var countRGB = 0
var countRB = 0

for _ in 0..<n {
    var input = String(readLine()!)
    matrix.append(input.map{$0})
    input = input.replacingOccurrences(of: "G", with: "R")
    matrixRB.append(input.map{$0})
}

for x in 0..<n {
    for y in 0..<n {
        if matrix[x][y] != "V" {
            countRGB += dfs(x, y, matrix[x][y])
        }
    }
}

matrix = matrixRB

for x in 0..<n {
    for y in 0..<n {
        if matrix[x][y] != "V" {
            countRB += dfs(x, y, matrix[x][y])
        }
    }
}

print(countRGB, countRB)

func dfs(_ x: Int, _ y: Int, _ value: Character) -> Int {
    if x < 0 || y < 0 || x >= n || y >= n {
        return 0
    }
    if matrix[x][y] == value {
        matrix[x][y] = "V"
        dfs(x-1, y, value)
        dfs(x+1, y, value)
        dfs(x, y-1, value)
        dfs(x, y+1, value)
    }
    return 1
}
