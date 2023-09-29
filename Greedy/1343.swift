//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/29.
//

import Foundation


// 폴리오미노


var input = readLine()!

input = input.replacingOccurrences(of: "XXXX", with: "AAAA")
input = input.replacingOccurrences(of: "XX", with: "BB")

input.contains("X") ? print("-1") : print(input)

