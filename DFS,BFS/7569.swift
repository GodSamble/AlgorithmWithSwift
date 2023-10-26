//
//  7569.swift
//  Algorithm
//
//  Created by 고영민 on 10/25/23.
//

import Foundation
// TODO: 3차원 토마토

let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], n = input[1], h = input[2]
var graph = Array(repeating: Array(repeating: Array(repeating: 0, count: m), count: n), count: h)

// 동, 남, 서, 북, 하, 상
let dx = [1, 0, -1, 0, 0, 0]
let dy = [0, 1, 0, -1, 0, 0]
let dz = [0, 0, 0, 0, 1, -1]

var queue: [(Int, Int, Int)] = []

for i in 0..<h {
    for _ in 0..<n {
        graph[i].append(readLine()!.split(separator: " ").map { Int($0)! })
    }
}

// 익은 토마토의 좌표 Queue 삽입
for z in 0..<h {
    for y in 0..<n {
        for x in 0..<m {
            if graph[z][y][x] == 1 {
                queue.append((z, y, x)) // 😀😀😀😀
            }
        }
    }
}

var index = 0

while queue.count > index {
    let z = queue[index].0
    let y = queue[index].1
    let x = queue[index].2
    
    // 익은 토마토로 부터 동, 남, 서, 북, 하, 상 (6방향) 탐색
    for i in 0..<6 {
        let nz = z + dz[i]
        let ny = y + dy[i]
        let nx = x + dx[i]
        
        // 범위를 벗어나지 않고, 익지 않은 토마토라면
        if 0..<m ~= nx && 0..<n ~= ny && 0..<h ~= nz && graph[nz][ny][nx] == 0 {
            // 현재 토마토 + 1, Queue에 삽입
            graph[nz][ny][nx] = graph[z][y][x] + 1
            queue.append((nz, ny, nx))
        }
    }
    index += 1
}
// 1차원 배열로 만들어준 후
// 0이 있다면 모두 익지 못하는 상황
// 아니라면 가장 큰 수 - 1이 모든 토마토가 익는 날짜
print(graph.flatMap { $0 }.flatMap { $0 }.contains(0) ? -1 : graph.flatMap { $0 }.flatMap { $0 }.max()! - 1)
