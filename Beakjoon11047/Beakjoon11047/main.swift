/*
 *  백준 11047번 문제 - 동전0
 */

import Foundation

var coins = [Int]()
var cnt = 0

// N, K값 입력 받기
var input = readLine()!.components(separatedBy: " ").map({ Int($0)! })

// 동전 종류 배열에 append
for _ in 1 ... input[0] {
    let coin = readLine()
    coins.append(Int(coin!)!)
}

// 제일 큰 동전부터 체크
for i in (0...input[0]-1).reversed() {
    cnt += input[1] / coins[i]
    input[1] %= coins[i]
}

print(cnt)
