//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 12/26/23.
//

import Foundation
let T = Int(readLine()!)!
for _ in 0..<T {
    let p = readLine()!
    let n = Int(readLine()!)!
    let arr = readLine()!.dropFirst().dropLast().split(separator: ",").map{Int(String($0))!}
    
    var head = 0, tail = n-1
    var isReversed = false
    var isError = false
    
    for cmd in p {
        if cmd == "D" {
            if head > tail {
                isError = true
                break
            }
            if isReversed {
                tail -= 1
            } else {
                head += 1
            }
        } else {
            isReversed.toggle()
        }
    }
    
    if isError {
        print("error")
    } else if head > tail {
        print("[]")
    } else {
        let ans = arr[head...tail].map{String($0)}.joined(separator: ",")
        let reverseAns = arr[head...tail].reversed().map{String($0)}.joined(separator: ",")
        if isReversed {
            print("["+reverseAns+"]")
        } else {
            print("["+ans+"]")
        }
    }
}
