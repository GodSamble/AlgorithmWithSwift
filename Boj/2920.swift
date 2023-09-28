//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/28.
//

//import Foundation
//
//var arr : [Int] = []
//var input = readLine()!.split(separator: " ").map{Int($0)!}
//for i in 1...8 {
//    input[i] = i
//    if input == input[i].sorted(by: <) {print("ascending")}
//    else if input == input[i].sorted(by: >){print("descending")}
//    else {print("mixed")}
//}


import Foundation

var arr : [Int] = []
var input = readLine()!.split(separator: " ").map{Int($0)!}

if input == input.sorted(by: <) {
    print("ascending")
} else if input == input.sorted(by: >){
    print("descending")
} else {
    print("mixed")
}
