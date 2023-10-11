//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/11/23.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var array = [Int](1...n)
var result: [Int] = []
var index = 0
for _ in 1...n {
    //TODO:  array.count 로 해야함 input[0]이나 n으로 대신할 경우 for에서 레인지 오류 발생함.
    //TODO: 반복문 내에서 매번 k번째 사람을 제거하는 과정은 복잡하기 때문에, index를 사용하여 현재 위치를 나타내고 그에 따라 제거할 위치를 계산하는 것이 더 효과적입니다.
    index = (index + k - 1) % array.count
    result.append(array.remove(at: index))
}
print("<\(result.map { String($0) }.joined(separator: ", "))>")
