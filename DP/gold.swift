//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/12/23.
//

import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
    let inputNM = readLine()!.split(separator: " ").map { Int($0)! }
    let n = inputNM[0]
    let m = inputNM[1]

    let array = readLine()!.split(separator: " ").map { Int($0)! }

    var data = [[Int]]()
    var index = 0

    for _ in 0..<n {
        data.append(Array(array[index..<index+m]))
        index += m
    }

    for j in 1..<m {
        for i in 0..<n {
            // 왼쪽 위에서 오는 경우
            let leftUp: Int
            if i == 0 {
                leftUp = 0
            } else {
                leftUp = data[i-1][j-1]
            }

            // 왼쪽 아래에서 오는 경우
            let leftDown: Int
            if i == n - 1 {
                leftDown = 0
            } else {
                leftDown = data[i+1][j-1]
            }

            let left = data[i][j-1]
            data[i][j] += max(leftUp, leftDown, left)
        }
    }

    var result = 0
    for i in 0..<n {
        result = max(result, data[i][m-1])
    }
    print(result)
}
