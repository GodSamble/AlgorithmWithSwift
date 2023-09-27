//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/11.
//

import Foundation

let input = Int(readLine()!)!

var result = 0

for _ in 1...input {
    let word = readLine()!
    var arr : [Character] = []
    var token = false
    
    for i in word { // word만 놓고 보는 거야 aabbbbccdb
        if !arr.contains(i) {
            arr.append(i) // 없으면 수집해~
        }
        else if arr.last != i { // 수집란의 원소와 다를 시 트루
            token = true
        }
    }
    if !token {
        result += 1
    }
}
print("\(result)")

//append last contains

//몰랐던 점 : aabbbbcccb 일때.
//추론한 점 : b의 연속성을 카운트로 판별하나?

//깨달은 점 : 1) var arr : [Character] = [] 캐릭터로 배열 받고
//깨달은 점 : 2) bool 값을 활용하는 방식을 채택했고
//깨달은 점 : 3) 반복문으로 word, 즉 캐릭터 내부 를 돌면서, 없던 캐릭터면배열에 담고.
//깨달은 점 : 4) 새로 주시하는 애와 i, 즉 word의 일부가 같을 시, 토큰의 불 값을 변경하여 결과값 +1 도출을 해냄

