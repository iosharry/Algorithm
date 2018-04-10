/*
 *  백준 1427번 문제 - 소트인사이드
 */

import Foundation

let input = readLine()

if let input = input {
    let result = Array(input).sorted(by: >)
    print(String(result))
}
