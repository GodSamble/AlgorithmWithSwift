//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/22/23.
//

import Foundation

func solution()->Int{
    var input = Int(readLine()!)!
    
    var result = 0
    
    if input % 5 == 0 {
        return input / 5
    }
    
    while input >= 0 {
        input -= 3
        result += 1
        if input % 5 == 0 {
            return result + (input / 5)
        }
    }
    return -1
}

print(solution())
