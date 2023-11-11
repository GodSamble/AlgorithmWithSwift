//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 11/8/23.
//

import Foundation

struct Heap<T: Comparable> {
    
    enum Kind {
        case max
        case min
    }
    var heapArray = [T?]()
    let kind: Kind
    
    mutating func insert(_ value : T) {
        if heapArray.isEmpty {
            heapArray.append(nil)
            heapArray.append(value)
        } else {
            heapArray.append(value)
            var insertedIndex = heapArray.count - 1
            
            while moveUp(insertedIndex) {
                let parentIndex = insertedIndex / 2
                heapArray.swapAt(insertedIndex, parentIndex)
                insertedIndex = parentIndex
            }
        }
    }
    private func moveUp(_ insertedIndex: Int) -> Bool {
        if insertedIndex <= 1 {
            return false
        } else {
            let parentIndex = insertedIndex / 2
            
            switch kind {
            case .max:
                if heapArray[parentIndex]! < heapArray[insertedIndex]! {
                    return true
                }
                return false
            case .min:
                if heapArray[parentIndex]! > heapArray[insertedIndex]! {
                    return true
                }
                return false
            }
        }
    }
    mutating func pop() -> T? {
        if heapArray.count <= 1 {
            return nil
        }
        
        let popedData = heapArray[1]!
        heapArray[1] = heapArray.last!
        heapArray.removeLast()
        var popedIndex = 1
        
        while moveDown(popedIndex) {
            let leftChildIndex = popedIndex * 2
            let rightChildIndex = popedIndex * 2 + 1
            
            // case 2: right 노드가 없는 경우 -> left 노드랑만 비교한다
            if rightChildIndex >= heapArray.count {
                switch kind {
                case .max:
                    if heapArray[popedIndex]! < heapArray[leftChildIndex]! {
                        heapArray.swapAt(popedIndex, leftChildIndex)
                        popedIndex = leftChildIndex
                    }
                case .min:
                    if heapArray[popedIndex]! > heapArray[leftChildIndex]! {
                        heapArray.swapAt(popedIndex, leftChildIndex)
                        popedIndex = leftChildIndex
                    }
                }
            }
            // case 3: left right 둘다 있는 경우 -> left right를 비교하고 root 노드와 비교한다
            else {
                switch kind {
                case .max:
                    if heapArray[leftChildIndex]! > heapArray[rightChildIndex]! {
                        if heapArray[popedIndex]! < heapArray[leftChildIndex]! {
                            heapArray.swapAt(popedIndex, leftChildIndex)
                            popedIndex = leftChildIndex
                        }
                    } else {
                        if heapArray[popedIndex]! < heapArray[rightChildIndex]! {
                            heapArray.swapAt(popedIndex, rightChildIndex)
                            popedIndex = rightChildIndex
                        }
                    }
                case .min:
                    if heapArray[leftChildIndex]! > heapArray[rightChildIndex]! {
                        if heapArray[popedIndex]! > heapArray[rightChildIndex]! {
                            heapArray.swapAt(popedIndex, rightChildIndex)
                            popedIndex = rightChildIndex
                        }
                    } else {
                        if heapArray[popedIndex]! > heapArray[leftChildIndex]! {
                            heapArray.swapAt(popedIndex, leftChildIndex)
                            popedIndex = leftChildIndex
                        }
                    }
                }
            }
        }
        return popedData
    }
    
    private func moveDown(_ popedIndex: Int) -> Bool {
        
        let leftChildIndex = popedIndex * 2
        let rightChildIndex = popedIndex * 2 + 1
        
        // case 1: left 노드가 없는 경우 -> 바꾸지 않는다
        if leftChildIndex >= heapArray.count {
            return false
        }
        // case 2: right 노드가 없는 경우 -> left 노드랑만 비교한다
        else if rightChildIndex >= heapArray.count {
            switch kind {
            case .max:
                if heapArray[popedIndex]! < heapArray[leftChildIndex]! {
                    return true
                } else {
                    return false
                }
            case .min:
                if heapArray[popedIndex]! > heapArray[leftChildIndex]! {
                    return true
                } else {
                    return false
                }
            }
        }
        // case 3: left right 둘다 있는 경우 -> left right를 비교하고 root 노드와 비교한다
        else {
            switch kind {
            case .max:
                if heapArray[leftChildIndex]! > heapArray[rightChildIndex]! {
                    if heapArray[popedIndex]! < heapArray[leftChildIndex]! {
                        return true
                    } else {
                        return false
                    }
                } else {
                    if heapArray[popedIndex]! < heapArray[rightChildIndex]! {
                        return true
                    } else {
                        return false
                    }
                }
            case .min:
                if heapArray[leftChildIndex]! > heapArray[rightChildIndex]! {
                    if heapArray[popedIndex]! > heapArray[rightChildIndex]! {
                        return true
                    } else {
                        return false
                    }
                } else {
                    if heapArray[popedIndex]! > heapArray[leftChildIndex]! {
                        return true
                    } else {
                        return false
                    }
                }
            }
        }
    }
}

let n = Int(readLine()!)!
var heap = Heap(heapArray: [Int](), kind: .min)
for _ in 1...n {
    let x = Int(readLine()!)!
    if x == 0 {
        print(heap.pop() ?? 0)
    } else {
        heap.insert(x)
    }
}
