//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/29.
//

import Foundation

// TODO: 이차원 배열만들고 함수를 하나 만들자

// TODO: 그리디 알고리즘 식 접근법 : 문제에서 제시한 조건에 의거했을 때, 가장 손실이 적고 많은 이익을 챙기기위해선
// TODO: 이차원 배열의 우측 아래부터 역순으로 올라와야한다.

// 문제명: 뒤집기 II

//func check(_ arr : [[Int]], _ N : Int, _ M : Int) -> Bool {
//    for i in 0..<N {
//        for j in 0..<M {
//            if arr[i][j] == 1 {
//                return false
//            }
//        }
//    }
//    return true
//}

let input = readLine()!.split(separator: " ").map{ Int($0)!}

let N = input[0]
let M = input[1]

var arr = [[Int]]()

for _ in 0..<N {
    let row = readLine()!.map{Int(String($0))!}
    arr.append(row)
}

var cnt = 0 // result

for i in stride(from: N-1, through: 0, by: -1) { // 우측 하단에서 빠꾸하려면 이렇게 하는 구나
    for j in stride(from: M-1, through: 0, by: -1) {
        if arr[i][j] == 1 {
            cnt += 1
            for k in 0...i {
                for l in 0...j {
                    arr[k][l] = (arr[k][l] == 0) ? 1 : 0
                }
            }
        }
    }
}

print(cnt)

//TODO: 이차원 배열에서의 stride과 함께하는 중첩반복문
