//
//  main.swift
//  FindingDivisor
//
//  Created by 이광용 on 2018. 4. 12..
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

let input = convertInt() // 20

for i in 1 ... input {
    if input % i == 0 {
        print(i, terminator: " ")
    }
}
