//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/26/23.
//

import Foundation

struct Queue<T> {
    var index = 0
    var queue : [T] = []
    
    mutating func push(_ e : T) {
        queue.append(e)
    }
    mutating func pop() -> T {
        defer {
            index += 1
        }
        return queue[index]
    }
}

var input = readLine()!.split(separator: " ").map{Int($0)!}
var matrix = [[String]]()

for _ in 0..<input[0] {
    let row = readLine()!.map{String($0)}
    matrix.append(row)
}

var dx = [-1,1,0,0]
var dy = [0,0,-1,1]

var count = 0

var queue = Queue<(Int,Int)>()

for i in 0..<input[0] {
    for j in 0..<input[1] {
        if matrix[i][j] == "I" {
            queue.push((i,j))
        }
    }
}

//bfs 를 이용해서



print(count != 0 ? count : "TT")
