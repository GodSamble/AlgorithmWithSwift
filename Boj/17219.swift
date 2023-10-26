//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/26/23.
//

import Foundation

// 딕셔너리

var testCase = readLine()!.split(separator: " ").map{Int($0)!}

var a = testCase[0]
var b = testCase[1]
var dict : [String : String] = [ : ]
for _ in 0..<a {
    var matching = readLine()!.split(separator: " ").map{String($0)}
    dict[matching[0]] = matching[1]
}
for _ in 0..<b {
    let find : String = readLine().map{String($0)}! // 타입 지정 기재하는 습관 기르기!
    print(dict[find]!)
}
