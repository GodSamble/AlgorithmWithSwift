//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/09.
//

import Foundation

let input = Int(readLine()!)!

for _ in 0..<input {
    selectFirstLastCharacter()
}


func selectFirstLastCharacter() {
    let statement = readLine()!
    print("\(statement.first!)\(statement.last!)")
    
}

// MARK: String 에는 .first와 .last 로 텍스트의 처음과 끝을 알 수 있다.
