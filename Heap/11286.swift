//
//  11289.swift
//  Algorithm
//
//  Created by 고영민 on 12/7/23.
//

import Foundation
// 첫째 줄에 연산의 개수 N(1≤N≤100,000)이 주어진다. 다음 N개의 줄에는 연산에 대한 정보를 나타내는 정수 x가 주어진다. 만약 x가 0이 아니라면 배열에 x라는 값을 넣는(추가하는) 연산이고, x가 0이라면 배열에서 절댓값이 가장 작은 값을 출력하고 그 값을 배열에서 제거하는 경우이다. 입력되는 정수는 -231보다 크고, 231보다 작다.
// 만도스님 코드

// absHeap이란 문제에서 요구하는 절댓값을 주기 위해서, 꺽새 기호로 임의적인 조건을 달아주는 걸 내포한 힙을 의미한다.

class Heap<T> {
    private var nodes: [T] = []
    private let compare: (T,T) -> Bool
    
    init(sort: @escaping (T,T) -> Bool) {
        self.compare = sort
    }
    
    var isEmpty: Bool {
        nodes.isEmpty
    }
    
    func insert(_ element: T) {
        var idx = nodes.count
        nodes.append(element)
        
        while idx > 0, compare(nodes[idx], nodes[(idx-1)/2]) {
            nodes.swapAt(idx, (idx-1)/2)
            idx = (idx-1)/2
        }
    }
    
    func delete() -> T? {
        guard nodes.isEmpty == false else {
            return nil
        }
        
        if nodes.count == 1 {
            return nodes.removeLast()
        }
        
        let target = nodes.first
        nodes.swapAt(0, nodes.count - 1)
        _ = nodes.popLast()
        
        var idx = 0
        let limit = nodes.count
        
        while idx < limit {
            let leftChild = idx * 2 + 1
            let rightChild = leftChild + 1
            
            let children = [leftChild, rightChild]
                    .filter{$0 < limit && compare(nodes[$0], nodes[idx])}
                    .sorted {compare(nodes[$0], nodes[$1])}
                                
            if children.isEmpty { break }
            
            nodes.swapAt(idx, children[0])
            idx = children[0]
        }
        
        return target
    }
}
let heap = Heap<Int> {
    if abs($0) < abs($1) {
        return true
    } else if abs($0) == abs($1) {
        return $0 < $1
    } else {
        return false
    }
}

let n = Int(readLine()!)!
var ans = ""

for _ in 0..<n {
    let cmd = Int(readLine()!)!
    
    if cmd == 0 {
        ans += "\(heap.delete() ?? 0)\n"
    } else {
        heap.insert(cmd)
    }
}
print(ans.dropLast())
