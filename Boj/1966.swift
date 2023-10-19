//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/19/23.
//

import Foundation

let testCase = Int(readLine()!)!

for _ in 1...testCase {
    let inputNM = readLine()!.split(separator: " ").map { Int($0)! }
    let m = inputNM[1]
    
    var printCount = 0
    
    var tempPriorityList = readLine()!.split(separator: " ").map{ Int($0)! }
    var priorityList: [(Int, Int)] = []
    
    for (index, priority) in tempPriorityList.enumerated() {
        let tuple = (priority, index)
        priorityList.append(tuple)
    }
    
    tempPriorityList.sort()
    
    while true {
        if priorityList[0].0 == tempPriorityList.max() {
            printCount += 1
            if priorityList[0].1 == m {
                print(printCount)
                break
            } else {
                priorityList.removeFirst()
                tempPriorityList.popLast()
            }
        } else {
            priorityList.append(priorityList.removeFirst())
        }
    }
}
