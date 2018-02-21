/*
 *  백준 2292번 문제 - 벌집
 */

import Foundation

class beakjoon2292 {
    
    // 데이터 받기
    func getData() {
        let input = Int(readLine()!)!

        solution(input)
    }
    
    // 솔루션
    func solution(_ num: Int) {
        var flag = true
        
        var temp = 1
        var res = 1
        
        while flag {
            
            // 1 일 때
            guard num != 1 else {
                print(res)
                return
            }
            
            // 1 - 7 - 19 - 37 - ...
            temp = temp + (6 * res)
            
            if num > temp {
                res += 1
            }
            else {
                print(res + 1)
                flag = false
            }
        }
    }
}

let customclass = beakjoon2292()
customclass.getData()
