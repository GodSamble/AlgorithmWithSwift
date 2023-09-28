//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/28.
//

import Foundation

//TODO: 문제명 : 접두사

let input = Int(readLine()!)!
var words : [String] = []
var result = 0

for _ in 0..<input {
    if let word = readLine() {
        words.append(word)
    }
}

words.sort(by: <)

for i in 0..<input {
    let nowWord = words[i]
    var isHead = false

    for j in (i+1)..<input { //TODO: 중첩할때 지장갈 거 고려해서 i로 놓아야함
        if words[j].hasPrefix(nowWord) {
            isHead = true
            break
        }
    }

    if !isHead {
        result += 1
    }
}

print(result)
