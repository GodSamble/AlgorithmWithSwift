//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/22/23.
//

import Foundation
//
//var a = Int(readLine()!)!
//var arr : [Int] = []
//for _ in 0..<a {
//    var input = Int(readLine()!)!
//    arr.append(input)
//    arr.sort()
//    print(arr[0...arr.count])
//}
//arr.sort()
//
//for i in 0..<a {
//    print(arr[i])
//}
//


var countingNums = [Int](repeating: 0, count: 10001)
let n = Int(readLine()!)!
for _ in 0..<n {
    countingNums[Int(readLine()!)!] += 1
}
var output = ""
for i in 1...10000 {
    output += String(repeating: "\(i)\n", count: countingNums[i])
}
print(output)
