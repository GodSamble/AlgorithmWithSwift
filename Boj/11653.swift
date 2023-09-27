//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/25.
//

import Foundation

var n = Int(readLine()!)!

// 1일 경우 none 출력 , 그 외에 분기로 스타트  => 이 위치에 if문 쓰고
if n == 1 {
} else{
    for i in 2...n {
        while n % i == 0 { // TODO: if문으로 썻다 틀리고, while문이었구나.
            n = n / i
            print(i)
        }
    }
}

