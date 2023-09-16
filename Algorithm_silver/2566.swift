//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/16.
//

import Foundation


var matrix = [[Int]]()

for _ in 0..<9 {
    matrix.append(readLine()!.split(separator: " ").map{Int($0)!})
}

let maxValue = matrix.flatMap{$0}.max()!
for y in 0..<9 {
    for x in 0..<9 {
        if matrix[y][x] == maxValue {
            print(maxValue)
            print(y+1,x+1)
            break
        }
    }
}

// TODO: flatMap과 flatMap의 .max() 기능 사용에 대해 알게되었다.
// TODO: 행열을 중첩반복문으로 묘사할 떄 matrix[y][x] 가 되도록 행x 과 열y 순서를 의식해서 코드를 작성하라.
