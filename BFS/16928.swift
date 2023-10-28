//
//  16928.swift
//  Algorithm
//
//  Created by 고영민 on 10/28/23.
//

import Foundation


var input = readLine()!.split(separator: " ").map{Int($0)!}

var n = input[0]
var m = input[1]
var arr : [[Int]] = []
for _ in 0..<n+m {
    arr.append(readLine()!.split(separator: " ").map{Int($0)!})
}

func bfs() {
    var visited = Array(repeating: false, count: 101)
    var queue = [(Int, Int)]()
    queue.append((1,0))
    visited[1] = true
    var index = 0
    while queue.count > index {
        let pop = queue[index]
        index += 1
        var nowPosition = pop.0
        if nowPosition == 100 {
            print(pop.1)
            break
        }
        for i in arr {
            if i[0] == pop.0 {
                nowPosition = i[1]
            }
        }
        for i in 1...6 {
            let move =  nowPosition + i
            if move > 100 || visited[move] {continue}
            queue.append((move, pop.1+1))
            visited[move] = true
        }
    }
}

bfs()
