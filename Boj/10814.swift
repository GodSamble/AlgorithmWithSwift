//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/14/23.
//

import Foundation

var n = Int(readLine()!)!
var arr : [(Int, Int, String)] = []

for i in 0..<n {
    var input = readLine()!.split(separator: " ")
    var age = Int(input[0])!
    var name = String(input[1])
    arr.append((i, age, name))
}

let sortedMember = arr.sorted(by: {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    }
    return $0.1 < $1.1
})

for arr in sortedMember {
    print(arr.1, arr.2)
}
//3
//21 Junkyu
//21 Dohyun
//20 Sunyoung

// $0.0 만 정렬시키고 배열 넣고 출력
// 튜플 매핑 어떻게 시키지 -> 하나씩 매핑시키는구나 ^^;
