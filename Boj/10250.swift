//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/10/03.
//

import Foundation

func solution() {

    var input = readLine()!.split(separator: " ").map{Int($0)!}
    var H = input[0]
    var N = input[2]
    let floor = N % H == 0 ? H : N % H
    let room = N % H == 0 ? N / H : N / H + 1 // N % H로 해야 마지막 순번이 나오는구나
    print("\(floor)\(String(format: "%02d", room))") // %02d
}


var T = Int(readLine()!)!

for _ in 0..<T {solution()}

/*\
 %: 포맷 지정자를 시작한다는 표시입니다.
 0: 숫자를 0으로 채웁니다.
 2: 최소한 2자리로 만듭니다.
 d: 10진수로 출력합니다.
 
 즉, room 값이 한 자리 수일 경우, 앞에 0을 채워서 두 자리로 만들어주는 역할을 합니다. 예를 들어, room 값이 5라면, %02d를 사용하면 "05"로 출력됩니다.
 */
