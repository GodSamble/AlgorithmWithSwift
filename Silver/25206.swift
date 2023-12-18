//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 12/10/23.
//

import Foundation


//전공과목별 (학점 × 과목평점)의 합을 학점의 총합으로 나눈 값이다.


var dict: [String: Double] = [
"A+": 4.5, "A0": 4.0, "B+": 3.5, "B0": 3.0,
"C+": 2.5, "C0": 2.0, "D+": 1.5, "D0": 1.0, "F": 0
]

var totalScore : Double = 0
var totalGrade : Double = 0

for _ in 0..<20 {
    var input = readLine()!.split(separator: " ").map{String($0)}
    if let score = dict[input[2]] {
        totalGrade += Double(input[1])! * score
        totalScore += Double(input[1])!
    }
}

print(totalGrade / totalScore)
