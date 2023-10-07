//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/7/23.
//

import Foundation

var x = Int(readLine()!)!
var dic: [String][Int] = [ : ]

for i in 0..<x {
    var input = readLine()!
    dic[input, default: 0] += 1
}

var sortedDict = dict.sorted {
    $0.key.count == $1.key.count ? $0 < $1 : $0.key.count < $1.key.count
}

for i in 0..<sortedDict.count {
    print("\(sortedDict[i].key)")
}
