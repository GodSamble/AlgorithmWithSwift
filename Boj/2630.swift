//
//  2630.swift
//  Algorithm
//
//  Created by 고영민 on 10/25/23.
//

import Foundation

//TODO: 완전탐색 (재귀함수)

let n = Int(readLine()!)!
var board: [[Int]] = []
for _ in 0..<n {
    board.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var whiteCount = 0
var blueCount = 0
func splitPaper(y: Int, x: Int, n: Int) {
var white = 0
var blue = 0
for y in y..<y + n {
for x in x..<x + n {
if board[y][x] == 0 {
                white += 1
            } else {
                blue += 1
            }
        }
    }
if white == n * n {
        whiteCount += 1
return
    }
if blue == n * n {
        blueCount += 1
return
    }
splitPaper(y: y, x: x, n: n / 2)
splitPaper(y: y, x: x + n / 2, n: n / 2)
splitPaper(y: y + n / 2, x: x, n: n / 2)
splitPaper(y: y + n / 2, x: x + n / 2, n: n / 2)
}
splitPaper(y: 0, x: 0, n: n)
print(whiteCount)
print(blueCount)
