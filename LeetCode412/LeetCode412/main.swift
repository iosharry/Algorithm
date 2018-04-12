/*
 *  3의 배수는 fizz, 5의 배수는 buzz, 15의 배수는 fizzbuzz 나머지는 숫자값 출력
 */

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

// 입력
let input = convertInt()

func fizzbuzz(lines: Int) -> [String] {
    var res = [String]()
    
    for i in 1 ... lines {
        if i % 3 == 0 && i % 5 == 0 {
            res.append("fizzbuzz")
        }
        else if i % 3 == 0 {
            res.append("fizz")
        }
        else if i % 5 == 0 {
            res.append("buzz")
        }
        else {
            res.append("\(i)")
        }
    }
    
    return res
}

print(fizzbuzz(lines: input))

