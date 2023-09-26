//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/26.
//

import Foundation

var coords : [(Int, Int)] = []

for _ in 0..<3 {
let coord = readLine()!.split(separator: " ").map{Int($0)!}
    coords.append((coord[0], coord[1]))
}

let x = Dictionary(coords.map { ($0.0, 1) }, uniquingKeysWith: +)
let y = Dictionary(coords.map { ($0.1, 1) }, uniquingKeysWith: +)

print(x.first { $0.value == 1 }!.key, y.first { $0.value == 1 }!.key)

//좌표 나오면 딕셔너리 이용해야겠다
//TODO: {}가 스위프트에서 의미하는 것: $0은 클로저 내부에서 현재 요소를 나타냅니다. 보통 클로저는 배열의 각 요소를 처리할 때 사용됩니다.
//TODO: $0가 스위프트에서 의미하는 것: {}는 클로저의 시작과 끝을 나타냅니다. 클로저는 익명 함수로서 동작하며, 일반적으로 한 줄 이상의 코드를 포함할 수 있습니다.
//TODO: 딕셔너리에서 Dictionary( , uniquingKeyWith: + )가 의미하는 것: 중복된 키가 발생했을 때 어떻게 값을 결정할지를 정의하는 클로저.

//아 value 값을 계속 증진시켜서
//최종적으로 print 출력할 때, value 가 1인 얘들로만 출력하여 좌표를 찾아내는 거구나.
