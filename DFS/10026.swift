//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/26/23.
//

import Foundation

// 적록색약 TODO: DFS

/*
 5
 RRRBB
 GGBBB
 BBBRR
 BBRRR
 RRRRR
 */

let n = Int(readLine()!)!
var graph: [[Character]] = []
var graphRB = graph
var resultRGB = 0
var resultRB = 0
for _ in 1...n{
    var input = String(readLine()!)
    graph.append(input.map{ ($0) }) // 그래프 두개 만들어 놓을 거임
    input = input.replacingOccurrences(of: "G", with: "R")
    graphRB.append(input.map{ ($0) })  // 그래프 두개 만들어 놓을 거임
}

for x in 0..<n{
    for y in 0..<n{
        if graph[x][y] != "A"{
            resultRGB += dfs(x: x, y: y, value: graph[x][y]) // return 반환값이 0아니면 1축적이어서, 개수를 알 수있음
        }
    }
}
graph = graphRB
for x in 0..<n{
    for y in 0..<n{
        if graph[x][y] != "A"{
            resultRB += dfs(x: x, y: y, value: graph[x][y])
        }
    }
}

print(resultRGB, resultRB)

func dfs(x: Int, y: Int, value: Character) -> Int{
    if x < 0 || y < 0 || x >= n || y >= n{ // 예외상황 조건으로 서두에 달아놓고 .
        return 0
    }
    if graph[x][y] == value{
        graph[x][y] = "A" // 방문했으면 "A"로 방문표시 찍기
        dfs(x: x-1, y: y, value: value) //
        dfs(x: x+1, y: y, value: value)
        dfs(x: x, y: y-1, value: value)
        dfs(x: x, y: y+1, value: value)
    }
    return 1
}

