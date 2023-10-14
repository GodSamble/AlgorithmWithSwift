//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/13/23.
//
// branch


import Foundation

var stack : [Int] = []
var n = Int(readLine()!)!
for _ in 0..<n {
    var input = readLine()!.split(separator: " ").map{String($0)}
    switch input[0] {
    case "push":
        push(Int(input[1])!)
    case "pop":
        print(pop())
    case "size":
        size()
    case "empty":
        empty()
    case "top":
        print(top())
        break
    default:
        break
    }
}

func push(_ a: Int) {
    stack.append(a)
}

func pop() -> Int {
//    stack.remove(at: 0)
    if let popValue = stack.popLast() {
        return popValue
    }else {
        return -1
    }
}

func size() {
    print(stack.count)
}

func empty() {
    stack.count == 0 ? print("1") : print("0")
}

func top() -> Int{
    if let last = stack.last {
        return last
    }else {
        return -1
    }
}
