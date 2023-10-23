//
//  1074_2.swift
//  Algorithm
//
//  Created by 고영민 on 10/23/23.
//

import Foundation


// TODO: 분할정복으로  풀었을떄


 var input = readLine()!.split(separator: " ").map { Int($0)! }
 var N = input[0]
 var r = input[1]
 var c = input[2]

 var ans = 0

 while N != 0 {
     N -= 1

     if r < 1 << N && c < 1 << N {
         ans += (1 << N) * (1 << N) * 0
     } else if r < 1 << N && c >= 1 << N {
         ans += (1 << N) * (1 << N) * 1
         c -= 1 << N
     } else if r >= 1 << N && c < 1 << N {
         ans += (1 << N) * (1 << N) * 2
         r -= 1 << N
     } else {
         ans += (1 << N) * (1 << N) * 3
         r -= 1 << N
         c -= 1 << N
     }
 }

 print(ans)

