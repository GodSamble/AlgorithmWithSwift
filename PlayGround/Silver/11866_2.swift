//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/1/23.
//

import Foundation
// MARK: 요세푸스 문제 0
// MARK: Queue 이용해서 품

struct Queue<T> {
    var queue : [T] = []
    var index = 0
    
    var isEmpty : Bool {
        return queue.count - index == 0
    }
    mutating func push(_ e: T) {
        queue.append(e)
    }
    mutating func pop()-> T {
        defer {index += 1}
        return queue[index]
    }
}

var input = readLine()!.split(separator: " ").map{Int($0)!}
let n = input[0]
let k = input[1]

var queue = Queue<Int>()
var result : [Int] = []

for i in 1...n {
    queue.push(i)
}

while !queue.isEmpty {
    for _ in 0..<k-1 {
        queue.push(queue.pop())
    }
    result.append(queue.pop())
}

print("<\(result.map { String($0) }.joined(separator: ", "))>")
