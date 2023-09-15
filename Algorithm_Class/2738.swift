//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/16.
//

import Foundation

var input = readLine()!.split(separator: " ").map{Int($0)!} // 3 3
var n = input[0]
var m = input[1]
var matrixA = [[Int]]()
var matrixB = [[Int]]()

for _ in 0..<n {
    var rowA = readLine()!.split(separator: " ").map{Int($0)!} // 1 1 1
    matrixA.append(rowA)
}

for _ in 0..<n {
    var rowB = readLine()!.split(separator: " ").map{Int($0)!} // 3 3 3
    matrixB.append(rowB)
}


// 행렬 덧셈
var resultMatrix = [[Int]]()

for i in 0..<n {
    var row = [Int]()
    for j in 0..<m {
        let sum = matrixA[i][j] + matrixB[i][j]
        row.append(sum)
    }
    resultMatrix.append(row)
}  // 이차원 배열에서는 .append로 해야하고 일차원 배열에서는 row += sum 이런식으로 된다

// 결과 출력
for row in resultMatrix {
    print(row.map { String($0) }.joined(separator: " "))
}


// TODO: 메모 : 이차원 배열에서는 .append로 해야하고 일차원 배열에서는 row += sum 이런식으로 된다
