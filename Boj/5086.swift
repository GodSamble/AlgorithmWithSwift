//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/21.
//

import Foundation

while let input = readLine()?.split(separator: " ").map({Int($0)!}), input != [0,0] {
    if input[1] % input[0] == 0 {
        print("factor")
    }
    else if input[0] % input[1] == 0 {
        print("multiple")
    } else {
        print("neither")
    }
}

// TODO: while문의 실사용에는 이렇게 사용하는구나 싶었음
