//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/15/23.
//

import Foundation

//var input = Int(readLine()!)! // 5 입력
//var arr : [Int] = Array(1...input) // [1,2,3,4,5]
//
//while arr.count != 1 {
//    arr.removeFirst()
//    arr.append(arr[0])
//    arr.removeFirst()
//}
//
//print(arr[0])

struct Queue {
    private var array: [Int] = []
    private var index: Int = 0
    
    var size: Int {
        return array.count - index
    }

    var isEmpty: Bool {
        return array.count - index <= 0
    }
    
    var last: Int {
        return array.last!
    }
    
    mutating func push(_ element: Int) {
        array.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Int {
        guard !self.isEmpty else {
            return -1
        }
        let element = array[index]
        index += 1
        return element
    }
}

let n = Int(readLine()!)!
var queue = Queue()
(1...n).forEach { queue.push($0) }

while queue.size != 1 {
    queue.pop()
    queue.push(queue.pop())
}

print(queue.last)
