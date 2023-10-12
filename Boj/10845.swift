//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/13/23.
//

import Foundation

var queue : [Int] = []
var n = Int(readLine()!)!

for _ in 0..<n {
    let a = readLine()!.split(separator: " ")
    switch String(a[0]) {
    case "push":
        push(Int(a[1])!)
    case "pop":
        print(pop())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "front":
        print(front())
    case "back":
        print(back())
    default:
        break
    }
}


func push(_ a : Int) {
    queue.append(a)
}

func pop() -> Int {
    if size() == 0 {
        return -1
    }
    else {
        return queue.removeFirst()
    }
}

func size() -> Int {
    return queue.count
}

func empty() -> Int {
    return queue.isEmpty ? 1 : 0
}

func front() -> Int {
    return queue.first ?? -1
}


func back() -> Int {
    return queue.last ?? -1
}


