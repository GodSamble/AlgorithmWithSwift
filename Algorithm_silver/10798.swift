//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/16.
//

import Foundation

var words = [[String]](repeating: [String](repeating: "", count: 15), count: 5)

for i in 0..<5 {
    let word = readLine()!.map{ String($0) }
    let lastIndex = word.count-1
    words[i].replaceSubrange(0..<lastIndex, with: word)
}


for i in 0..<15 {
    for j in 0..<5 {
        print(words[j][i], terminator: "")
    }
}
