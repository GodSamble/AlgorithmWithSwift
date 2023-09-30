//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/30.
//


// TODO: 백준 1474번 <밑 줄>
import Foundation

func getStr(idx: Int) -> String {
    if idx >= N {
        return "\n"
    }
    
    var hypo = ""
    if divi > 0 {
        for _ in 1...divi {
            hypo += "_"
        }
    }
    
    if (dict[idx] > "_" && res > 0) || N - idx <= res {
        res -= 1
        hypo += "_"
    }
    
    return hypo + dict[idx] + getStr(idx: idx+1)
}


var input = readLine()!.split(separator: " ").map{Int($0)!}

var N = input[0]
var M = input[1]

var words = 0
var divi = 0
var res = 0
var dict = [String]()

for _ in 0..<N {
    let s = readLine()!
    dict.append(s)
    words += s.count
}

divi = (M - words) / (N - 1)
res = (M - words) % (N - 1)

print(dict[0] + getStr(idx: 1))


