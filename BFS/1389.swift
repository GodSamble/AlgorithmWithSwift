//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/25/23.
//

import Foundation
//TODO: 풀이방법 => BFS
//TODO: struct로 Queue를 구현함으로써 메모리 측면에서 이점을 가지는 습관 길들일 것.
//TODO: 괜찮은 BFS 예제이므로 반드시 다시 풀어볼 것!!

// bfs를 위한 Queue 구현
struct Queue<T> {
    var queue = [T]()
    var index = 0
    
    var isEmpty: Bool {
        return queue.count - index == 0
    }
    
    mutating func push(_ e: T) {
        queue.append(e)
    }
    
    mutating func pop() -> T {
        defer {
            index += 1
        }
        return queue[index]
    }
}

// 입력 받기
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], M = input[1]

// 인접 행렬 선언하고 간선 정보 저장하기
    //🤔 이 문제는 인접리스트가 더 적절함!
var matrix = Array(repeating: Array(repeating: false, count: N + 1), count: N + 1)
for _ in 0..<M {
    let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
    matrix[edge[0]][edge[1]] = true
    matrix[edge[1]][edge[0]] = true
}

// n번 유저의 케빈 베이컨의 수를 반환하는 bfs
func bfs(n: Int) -> Int {
    var queue = Queue<(Int, Int)>() //👉 연결된 유저와 거리를 함께 저장
    var visited = Array(repeating: false, count: N + 1)
    var cnt = 0 //👉 거리를 모두 더해서 케빈 베이컨의 수를 구하는 변수
    queue.push((n, 0))
    visited[n] = true
    
    while !queue.isEmpty {
        let now = queue.pop()
        cnt += now.1 //👉 거리를 cnt에 더하기
        for i in 1..<(N+1) {
            if matrix[now.0][i] && !visited[i] { //👉 now에서 i까지 연결된 간선이 있고 i를 아직 방문하지 않았다면
                queue.push((i, now.1 + 1))
                visited[i] = true
            }
        }
    }
    
    return cnt
}

// n번 유저의 케빈 베이컨의 수를 저장하는 배열
var result = Array(repeating: Int.max, count: N + 1)

// bfs로 구한 케빈 베이컨의 수를 저장
for i in 1..<(N+1) {
    result[i] = bfs(n: i)
}

// 가장 작은 케빈 베이컨의 수를 가지는 가장 빠른 index를 반환 (여러명일 경우 가장 빠른 수를 반환하므로)
print(result.firstIndex(of: result.min()!)!)
