//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/13/23.
//

import Foundation

var deque : [Int] = []
var n = Int(readLine()!)!

//for _ in 0..<n {
//    let a = readLine()!.split(separator: " ")
//    switch String(a[0]) {
//    case "push":
//        push(Int(a[1])!)
//    case "pop":
//        print(pop())
//    case "size":
//        print(size())
//    case "empty":
//        print(empty())
//    case "front":
//        print(front())
//    case "back":
//        print(back())
//    default:
//        break
//    }
//}

for _ in 0..<n {
    let a = readLine()!.split(separator: " ")
    switch String(a[0]) {
    case "push_front":
        push_front(Int(a[1])!)
    case "push_back":
        push_back(Int(a[1])!)
    case "pop_front":
        pop_front()
    case "pop_back":
        pop_back()
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "front":
        front()
    case "back":
        back()
    default:
        break
    }
}


func push_front(_ a: Int) {
    deque.insert(a, at: 0) //TODO: .insert()와 .appned()의 차이
}

func push_back(_ a: Int) {
    deque.append(a)
}

func pop_front() {
    if deque.isEmpty {
        print("-1")
    } else {
        print(deque.removeFirst())
    }
}
func pop_back() {
    if deque.isEmpty {
        print("-1")
    } else {
        print(deque.removeLast())
    }
}
func size() -> Int {
    return deque.count
}
func empty() -> Int {
    if deque.isEmpty {
        return 1
    } else{
        return 0
    }
}
func front() {
    if deque.isEmpty {
        print("-1")
    }else {
        print(deque.first!)
    }
}
func back() {
    if deque.isEmpty {
        print("-1")
    }else {
        print(deque.last!)
    }
}
