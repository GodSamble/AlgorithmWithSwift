//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/21.
//

import Foundation

func isPerfect(_ n: Int) {
    var factor:[Int] = []
    var sum = 0
    
    for i in 1..<n {
        if n % i == 0 {
            factor.append(i)
        }
    }
    
    for j in factor {
        sum += j
    }
    
    if sum == n {
        print("\(n) =", terminator: " ")
        for (index, j) in factor.enumerated() {
            print(index == factor.count - 1 ? "\(j)" : "\(j) +", terminator: " ")
        }
        //TODO: 튜플 사용 이렇게
        //TODO: 출력값 요청을 희한하게 했는데, 이런식으로 구현할 수 있음을 다시금 자각

        print()
    } else {
        print("\(n) is NOT perfect.")
    }
}


while true {
    let input = Int(readLine()!)!
    if input == -1 {
        break
    }
    isPerfect(input)
}
