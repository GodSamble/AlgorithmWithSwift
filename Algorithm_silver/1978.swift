//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/21.
//

import Foundation

let input = Int(readLine()!)!
var count = 0
var isPrime = true
var arr = readLine()!.split(separator: " ").map{Int($0)!}

for i in 0..<input {
    if arr[i] == 1 {
        isPrime = false
    }else {
        for j in 2..<arr[i] {
            if arr[i] % j == 0 {
                isPrime = false
            }
        }
        if isPrime == true{
            count += 1
        }
    }
    
    isPrime = true
}
print("\(count)")
