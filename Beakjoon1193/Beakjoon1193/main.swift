/*
 *  백준 1193번 문제 - 분수찾기
 */

import Foundation

class beakjoon1193 {
    
    func getData() {
        let input = Int(readLine()!)!
        
        solution(input)
    }
    
    func solution(_ num: Int) {
        var count = 0
        var denominator = 0 // 분모
        var numerator = 0 // 분자
        var flag = false // for문 종료 시킴을 위한 플래그
        
        for i in 1 ... num {
            for j in 0 ..< i {
                // 홀수 일 때 - 분모 +1, 분자 -1
                if i % 2 != 0 {
                    numerator = i - j
                    denominator = j + 1
                }
                // 짝수 일 때 - 분모 -1, 분자 +1
                else {
                    numerator = j + 1
                    denominator = i - j
                }
                count += 1
                
                let res_string = "\(numerator)/\(denominator)"
                
                // 입력된 값과 일치하면 결과 값 출력
                if num == count {
                    print(res_string)
                    flag = true
                    break;
                }
            }
            if flag { break }
        }
    }
}

let customclass = beakjoon1193()
customclass.getData()

