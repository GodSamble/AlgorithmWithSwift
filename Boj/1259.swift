//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/8/23.
//

import Foundation

var input = readLine()!

while input != "0" {
    print(isPalindrome(input) ? "Yes" : "No")
    input = readLine()!
}

func isPalindrome(_ str : String) -> Bool {
    let arr = str.map{String($0)}
    var res = true
    for i in 0..<arr.count/2{
        if arr[i] != arr[arr.count-1-i]{
            res = false
        }
    }
    return res
}
