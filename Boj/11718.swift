//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/10.
//

import Foundation

for _ in 0..<100 {
    guard let input = readLine() else { break }
    print(input)
}


// 입력 값이 없을 때 까지 계속 받기 떄문에, 분기처리를 해줄 필요가있음.
// guard let 구문으로, readLine()의 경우 기존 String? 타입이므로 옵셔널 바인딩인 'nil' 혹은 '값이 있음' 이므로
// 이 두가지 갈래로 분기를 따면 됨.
