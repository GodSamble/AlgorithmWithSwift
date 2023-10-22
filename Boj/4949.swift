//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/22/23.
//

import Foundation

var input = ""

while true {
    input = readLine()!
    if input == "." { break }
    var stack = [Character]()
    var check = true
    
    for i in input {
        if i == "[" || i == "(" { stack.append(i) }
        else if i == "]" || i == ")" {
            if stack.isEmpty { check = false; break }
            if i == "]" && stack.removeLast() != "[" { check = false; break }
            else if i == ")" && stack.removeLast() != "(" { check = false; break }
        }
    }
    
    if check == false { print("no") }
    else {
        if !stack.isEmpty { print("no") }
        else {print("yes")}
    }
}
