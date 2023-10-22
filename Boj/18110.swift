//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/22/23.
//


//TODO: round() 내장함수 쓰면 런타임에러 발생해서 만들어서 해야하는 문제

import Foundation

func roundUp(_ num: Double) -> Int {
    if num - Double(Int(num)) >= 0.5 {
        return Int(num) + 1
    } else {
        return Int(num)
    }
}

if let n = Int(readLine()!) {
    if n == 0 {
        print(0)
    } else {
        var arr = [Int]()
        
        for _ in 0..<n {
            if let input = Int(readLine()!) {
                arr.append(input)
            }
        }
        
        arr.sort()
        let border = roundUp(Double(n) * 0.15)
        
        let sumOfTrimmed = arr[border..<n-border].reduce(0, +)
        let average = Double(sumOfTrimmed) / Double(arr[border..<n-border].count)
        
        print(roundUp(average))
    }
}
