//
//  main.swift
//  Algorithm
//
//  Created by 고영민 on 2023/10/05.
//

import Foundation

//반복문으로 구현한 이진 탐색 소스코드 [외워둘 것!! 실사용 요긴하게 할 수 있음!!]
var binaryArray = [0, 1, 4, 6, 8, 11, 14, 23, 24, 26, 28, 31, 41, 50]

func repetitionBinary(array: [Int], target: Int, start: Int, end: Int) -> Int? {
    //시작점과 끝점을 잡아주는건 동일합니다.
    var start = start
    var end = end
    
    //마찬가지로 시작점이 끝점보다 작은 동안, 즉 전체를 탐색하기 전까지 계속 돌아줍니다.
    while start <= end {
        //중간값 잡는것도 똑같죠?
        var mid = (start + end) / 2
        
        //여기도 거의 유사한 방식입니다. 중간값이 타겟값이면 중간값을 리턴해주고
        if array[mid] == target {
            return mid
        } else if array[mid] > target {
        //중간값이 타겟 숫자보다 크면 그 다음 돌아갈때는 끝점을 중간값 밑까지로 바꿔주세요.
            end = mid - 1
        } else {
        // 중간값이 타겟 숫자보다 작으면 그 다음 돌아갈때는 시작점을 중간값 바로 위까지로 바꿔주세요.
            start = mid + 1
        }
        
    }
    //위의 반복문에서 결과를 못찾아서 while문을 탈출하면 값이 그 안에 없는거니 nil을 반환해 주세요
    return nil
    
}

var result = repetitionBinary(array: binaryArray, target: 4, start: 0, end: binaryArray.count - 1) //이 코드 한줄을 통해, 정렬을 하고 4가 있는 위치를 출력하게끔 함!!
print(result)
