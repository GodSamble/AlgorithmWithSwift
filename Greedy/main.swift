//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/27.
//

import Foundation

// 거스름돈 <이코테>

var n = 1260
var cnt = 0
var coin_types : [Int] = [500,100,50,10]

for i in 0..<coin_types.count {
    cnt += n / coin_types[i]
    n = n % coin_types[i]
}
print(cnt)
        
