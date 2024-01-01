//
//  9375.swift
//  Algorithm
//
//  Created by 고영민 on 1/1/24.
//

import Foundation

for _ in 0..<Int(readLine()!)!{ // testcase만큼 반복
    var result_arr: [Int] = [] // 각 value + 1을 넣을 배열
    var dic = [String: [String]]()
    let n = Int(readLine()!)!
    if n == 0{ // 이 코드 없으면 runtimeError 발생
        print(0)
        continue
    }

    for _ in 0..<n{ // n만큼 반복
        let value: [String] = readLine()!.split(separator: " ").map{ String($0) }
        
        if dic.keys.contains(value[1]){ // 이미 존재한다면
            dic[value[1]]!.append(value[0]) // append
        } else { // 없다면
            dic[value[1]] = [value[0]] // key 생성
        }
    }
    for (_, value) in dic{
        result_arr.append(value.count + 1) // value의 길이 + 1을 삽입
    }
    print(mul(numbers: result_arr) - 1) // 각 값의 곱을 구한 후 -1 하여 출력
    
}

func mul(numbers: [Int]) -> Int{
    numbers.reduce(1, *)
}
