//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/20/23.
//

import Foundation

func bfs() {
    let nk = readLine()!.split(separator: " ").map{Int($0)!}
    var queue = [(nk[0], 0)]
    var visited = Array(repeating: false, count: 100001)
    visited[nk[0]] = true
    var index = 0
    
    while index <= queue.count {
        let temp = queue[index]
        let place = temp.0
        let depth = temp.1
        
        if place == nk[1] {
            print("\(depth)")
            break
        }
        
        for i in 0..<3 {
            var nextPlace = 0

            switch i {
            case 0:
                nextPlace = place - 1
            case 1:
                nextPlace = place + 1
            default:
                nextPlace = place * 2
            }

            if nextPlace >= 0, nextPlace <= 100000, !visited[nextPlace] {
                visited[nextPlace] = true
                queue.append((nextPlace, depth + 1))
            }
        }

        index += 1
    }
    
}

bfs()
