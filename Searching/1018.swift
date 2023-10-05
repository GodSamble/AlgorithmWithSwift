//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/10/05.
//

import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!}
var board: [[String]] = []
var answer = 999
var draw = (0, 0)
let (n, m) = (input[0], input[1])

for _ in 1...n {
    var row = Array(readLine()!)
    board.append(row.map{String($0)})
}

for x in 0..<n-7 { // 보드를 세로크기 - 8 만큼 이동
    for y in 0..<m-7 { // 보드를 가로크기 - 8 만큼 이동
        draw = (0, 0) // 색칠한 횟수 초기화
        for i in x..<x+8 {
            for j in y..<y+8 {
                if (i+j)%2 == 0 { // 홀수칸 검사
                    if board[i][j] == "B" {draw.0 += 1}
                    else {draw.1 += 1}
                }
                else { // 짝수칸 검사
                    if board[i][j] == "B" {draw.1 += 1}
                    else {draw.0 += 1}
                }
            }
        }
        answer = min(answer, draw.0, draw.1)
    }
}

print(answer)
