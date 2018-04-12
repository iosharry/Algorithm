//
//  main.swift
//  IntegerPairs
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

func readLineToIntArray(_ str: String) -> [Int] {
    var result = [Int]()
    let arr = str.split(separator: " ")
    for str in arr {
        guard let convertInt = Int(str) else {
            return [1]
        }
        result.append(convertInt)
    }
    
    return result
}

let input = readLineToIntArray(readInput())
let integer = readLineToIntArray(readInput())
var cnt = 0

for i in 0 ..< input[0] {
    for j in i+1 ..< input[0] {
        let compareValue = (integer[i] - integer[j]).magnitude
        if compareValue == input[1] {
            cnt += 1
        }
    }
}
print(cnt)
