//
//  Queue.swift
//  Algorithm
//
//  Created by 고영민 on 11/20/23.
//

import Foundation

struct Queue <T> {
    var index = 0
    var queue : [T] = []
    
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
