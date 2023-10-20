//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/20/23.
//

import Foundation


let testCase = Int(readLine()!)!
var arr : [Int] = []
var dict = [Int:Int]()
for i in 0..<testCase {
    var input = readLine()!.split(separator: " ").map{Int($0)!}
    arr.append(input[i])
}

func solution1() -> Int { // 산술평균
    let sum = arr.reduce(0, +)
    return Int(round(Double(sum) / Double(arr.count)))
}

func solution2() -> Int { // 중앙값
    let sortedArr = arr.sorted()
    return sortedArr[arr.count/2]
}
func solution3() -> Int { // 최빈값 => 딕셔너리 사용
    var counts = [Int: Int]() // 숫자의 등장 횟수를 저장할 딕셔너리를 선언합니다.
    for num in arr {
        counts[num, default: 0] += 1 // 해당 숫자의 등장 횟수를 1 증가시킵니다.
    }
    
    let maxCount = counts.values.max()! // 등장 횟수 중 최댓값을 찾습니다.
    let mode = counts.filter { $0.value == maxCount }.keys.sorted() // 최빈값을 찾습니다.
    
    return mode.count == 1 ? mode[0] : mode[1] // 최빈값이 하나면 그 값을, 여러 개면 두 번째로 작은 값을 반환합니다.
}

func solution4() -> Int {
    let range = arr.max()! - arr.min()! // 최댓값과 최솟값의 차이를 구합니다.
    return range
} // 범위출력 (최댓값 - 최솟값)


print(solution1())
print(solution2())
print(solution3())
print(solution4())
