//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 12/21/23.
//

import Foundation

var graph : [[Int]] = [[]]
var n = Int(readLine()!)!
var visited = Array(repeating: Array(repeating: false, count: n+1), count: n+1)

var dx = [0, 0, -1, 1]
var dy = [1, -1, 0, 0]
var count = 0

for _ in 1...n {
    graph.append(readLine()!.map{Int(String($0))!})
}
graph.removeFirst() 
// MARK: 그래프 들어가는 문제는 -> 배열 1...n으로 1부터 시작하게하고,
// MARK: removeFirst()로 0번째는 지워주자.

func dfs(_ x: Int, _ y: Int) {
    count += 1
    visited[x][y] = true
    for i in 0...3{
        let nx = x + dx[i]
        let ny = y + dy[i]
        if nx >= 0 && nx < n && ny >= 0 && ny < n {
            if graph[nx][ny] == 1 && !visited[nx][ny] {
                dfs(nx, ny)
            }
        }
    }
}
var result = [Int]()
for i in 0..<n {
    for j in 0..<n {
        if graph[i][j] == 1 && !visited[i][j] {
            count = 0
            dfs(i,j)
            result.append(count)
        }
    }
}
print(result.count)
result.sort()
print(result.map{String($0)}.joined(separator: "\n"))
