//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/27/23.
//

import Foundation

// MARK: 최단거리 구하기

let inp = readLine()!.split(separator: " " ).map{Int(String($0))!}
let row = inp[0], col = inp[1]
var arr = [[Int]]()
let dir = [(0,1),(1,0),(-1,0),(0,-1)]
var queue = [(Int,Int,Int)]()
var dist = Array(repeating: Array(repeating: Int.max, count: col), count: row)
for i in 0..<row {
    let q = readLine()!.split(separator: " " ).map{Int(String($0))!}
    for j in 0..<col {
        if q[j] == 2 {
            queue.append((i,j,0))
            dist[i][j] = 0
        }else if q[j] == 0 { dist[i][j] = 0}
    }
    arr.append(q)
}
var q = 0
while queue.count > q {
    let f = queue[q]
    q += 1
    
    for i in 0..<4 {
        let n = (f.0+dir[i].0, f.1+dir[i].1)
        if n.0>=row||n.1>=col||n.0<0||n.1<0{ continue }
        if arr[n.0][n.1] == 0 || dist[n.0][n.1] != Int.max { continue }
        dist[n.0][n.1] = f.2+1
        queue.append((n.0,n.1,f.2+1))
    }
}
var answer = ""
dist.forEach{
    $0.forEach{
        if $0 == Int.max {
            answer.append("-1 ")
        }else {
            answer.append("\($0) ")
        }
    }
    answer.append("\n")
}

print(answer)
