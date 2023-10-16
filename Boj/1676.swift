//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 10/16/23.
//

import Foundation


if let n = readLine().map({ Int($0) ?? 0}) {
    var num = n
    var count = 0
    if num != 0 {
        while num > 0 {
            num /= 5
            count += num
        }

        print(count)
    } else {
        print(0)
    }
}
