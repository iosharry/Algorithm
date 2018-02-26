/*
 *  백준 2455번 문제 - 지능형 기차
 */

import Foundation

class beakjoon2455 {
    
    var total = 0
    var res = 0
    
    func solution() {
        
        for _ in 1 ... 4 {
            let input = readLine()
            let input_division = input?.components(separatedBy: " ")
            
            total += Int(input_division![1])! - Int(input_division![0])!
    
            res = res > total ? res : total
        }
        print(res)
    }
}

let beakjooon2455 = beakjoon2455()
beakjooon2455.solution()
