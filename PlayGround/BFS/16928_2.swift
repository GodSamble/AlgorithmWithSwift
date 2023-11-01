//
//  16928_2.swift
//  Algorithm
//
//  Created by 고영민 on 11/1/23.
//

import Foundation

//TODO: BFS 는 Queue와 visited 체크 여부가 중요하다

var input = readLine()!.split(separator: " ").map{Int($0)!}
var n = input[0]
var m = input[1]
var matrix = [[Int]]()


for _ in 0..<n+m {
    matrix.append(readLine()!.split(separator: " ").map{Int($0)!})
}

func bfs(){
    var visited = Array(repeating: false, count: 101)
    var queue = [(Int, Int)]()
    var index = 0
    
    queue.append((1,0))
    visited[1] = true
    
    while queue.count > index{
        let pop = queue[index]
        index += 1
        var curLocation = pop.0
        
        if curLocation == 100{
            print(pop.1)
            break
        }
        for i in matrix{
            if i[0] == pop.0{
                curLocation = i[1]
            }
        }
        for i in 1...6{
            let move = curLocation + i
            if move > 100 || visited[move] {continue}
            queue.append((move, pop.1 + 1))
            visited[move] = true
        }
        
        
        
    }
}

bfs()
