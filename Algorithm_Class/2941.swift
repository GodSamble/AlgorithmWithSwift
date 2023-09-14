//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/09/15.
//

import Foundation

var input = readLine()! // helelel
var count = input.count
var arr = ["c=","c-","dz=","d-","lj","nj","s=","z="]

for i in 0..<arr.count {
    input = input.replacingOccurrences(of: arr[i] , with: "1")
}

print(input.count) //print(count) 하면 9뜸

// 직관적으로 봤을 떄 , 값이 순리적으로 안바뀌어 보이는 얘도 있으니 좋은 코드는 아니다.
