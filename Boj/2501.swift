//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/21.
//

import Foundation

let input = readLine()!.split(separator: " ").map({Int($0)!})

var abc = input[0] // 6
var abcArr : [Int] = []
for i in 1...abc {
    if abc % i == 0 {
        abcArr.append(i)
    }
}

if input[1] <= abcArr.count {
    print(abcArr[input[1]-1])
} else {
    print(0) // 터무니없는 값을 입력받았을 때 0 출력
}
