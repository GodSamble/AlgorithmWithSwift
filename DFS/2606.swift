//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/27/23.
//

import Foundation

/*
 7
 6
 1 2
 2 3
 1 5
 5 2
 5 6
 4 7
 //4 출력

 DFS => visited 재귀
 */


var n = Int(readLine()!)!
var line = Int(readLine()!)!


var graph = Array(repeating: [Int](), count: n + 1)
var visited = Array(repeating: false, count: n + 1)

for _ in 0..<line {
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
    
}

func dfs(_ start: Int) {
    visited[start] = true
    for next in graph[start] {
        if !visited[next] {
            dfs(next)
        }
    }
}
dfs(1)

let count = visited.filter {$0 == true}.count - 1

print(count)
