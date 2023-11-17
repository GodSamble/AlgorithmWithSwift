//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/17/23.
//

import Foundation

let inputNM = readLine()!.split(separator: " ").map{Int($0)!}
var n = inputNM[0]
var m = inputNM[1]
var depth = 0
var count = 0
var graph: [[Int]] = Array(repeating: [], count: n+1)
var visited = Array(repeating: false, count: n+1)

for _ in 1...m {
    let line = readLine()!.split(separator: " ").map{Int(String($0))!}
    graph[line[0]].append(line[1])
    graph[line[1]].append(line[0])
}

func dfs(_ now: Int, _ depth: Int) {
    visited[now] = true
    for i in 0..<graph[now].count{
        let next = graph[now][i]
        if !visited[next]{
            dfs(next, depth + 1)
        }
    }
}

for i in 1...n {
    if !visited[i] {
        count += 1
        dfs(i, depth)
    }
}
print(count)
