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

struct Heap<T: Comparable> {
    private var elements: [T] = []
    private let comparer: (T, T) -> Bool
    
    var isEmpty: Bool {
        return elements.count <= 1
    }
    
    var peek: T? {
        if isEmpty {
            return nil
        }
        return elements[1]
    }
    
    init(comparer: @escaping (T,T) -> Bool) {
        self.comparer = comparer
    }
    
    mutating func insert(element: T) {
        if elements.isEmpty {
            elements.append(element)
            elements.append(element)
            return
        }
        elements.append(element)
        swimUp(index: elements.count - 1)
    }
    
    mutating private func swimUp(index: Int) {
        var index = index
        while index > 1 && comparer(elements[index], elements[index / 2]) {
            elements.swapAt(index, index / 2)
            index /= 2
        }
    }
    
    mutating func pop() -> T? {
        if elements.count < 2 { return nil }
        elements.swapAt(1, elements.count - 1)
        let deletedElement = elements.removeLast()
        diveDown(index: 1)
        return deletedElement
    }
    
    mutating private func diveDown(index: Int) {
        var swapIndex = index
        var isSwap = false
        let leftIndex = index * 2
        let rightIndex = index * 2 + 1

        if leftIndex < elements.endIndex && comparer(elements[leftIndex], elements[swapIndex]) {
            swapIndex = leftIndex
            isSwap = true
        }
        
        if rightIndex < elements.endIndex && comparer(elements[rightIndex], elements[swapIndex]) {
            swapIndex = rightIndex
            isSwap = true
        }

        if isSwap {
            elements.swapAt(swapIndex, index)
            diveDown(index: swapIndex)
        }
    }
}

struct Data: Comparable {
    static func < (lhs: Data, rhs: Data) -> Bool {
        return lhs.value == rhs.value ? lhs.num < rhs.num : lhs.value < rhs.value
    }
    var value: Int
    var num: Int
    
}

let n = Int(readLine()!)!

var absHeap: Heap<Data> = Heap(comparer: <)

for _ in 0..<n {
    let x = Int(readLine()!)!
    if x == 0 {
        print(absHeap.pop()?.num ?? 0)
    } else {
        absHeap.insert(element: Data(value: abs(x), num: x))
    }
    
}
