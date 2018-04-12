//
//  main.swift
//  9OR0
//
//  Created by 이광용 on 2018. 4. 11..
//  Copyright © 2018년 gwangyonglee. All rights reserved.
//

import Foundation

func readInput() -> String {
    guard let input = readLine() else {
        return ""
    }
    return input
}

func convertInt() -> Int {
    guard let convertValue = Int(readInput()) else {
        return 0
    }
    return convertValue
}

let T = convertInt()
var N_arr = [Int]()

for _ in 1 ... T {
    let N = convertInt()
    N_arr.append(N)
}

func solution(_ num: Int) -> Int {
    var cnt = 0
    var result = 0
    
    while true {
        cnt += 1
        let binary = Int(String(cnt, radix: 2))
        if let binary = binary {
            result = binary * 9
            if result % num == 0 {
                break
            }
        }
    }
    
    return result
}

for i in 0 ..< N_arr.count {
    print(solution(N_arr[i]))
}

