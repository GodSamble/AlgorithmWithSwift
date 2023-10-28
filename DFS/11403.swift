//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/26/23.
//

import Foundation

//TODO: DFS (Deep) : 재귀함수, visited

var input = Int(readLine()!)!
var matrix = [[String]]()
for _ in 0..<input {
    matrix.append(readLine()!.split(separator: " ").map{String($0)})
}

var check = Array(repeating: Array(repeating: "0", count: input), count: input)

var visited = Array(repeating: false, count: input)

//dfs
func dfs(_ start: Int, _ now: Int) {
    for i in 0..<input {
        if matrix[now][i] == "1" && !visited[i] {
            check[start][i] = "1"
            visited[i] = true
            dfs(start,i)
        }
    }
}

for i in 0..<input {
    dfs(i,i)
    visited = Array(repeating: false, count: input)
}

for answer in check {
    print(answer.joined(separator: " "))
}
