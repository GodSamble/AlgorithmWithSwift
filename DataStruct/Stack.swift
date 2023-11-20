//
//  Stack.swift
//  Algorithm
//
//  Created by 고영민 on 11/20/23.
//

import Foundation

struct Stack<T> {
    var elements: [T] = []
  
    var count : Int {
        return elements.count
    }
    var isEmpty : Bool {
        return elements.isEmpty
    }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }
    mutating func push(_ element: T) {
        elements.append(element)
    }
    func top() -> T? {
        return elements.last
    }
}
