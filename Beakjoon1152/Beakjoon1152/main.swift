/*
 *  Beakjoon 1152번 문제 - 단어의 개수
 */

import Foundation

class beakjoon1152 {
    
    func solution() {
        let a = readLine()
        
        if let a = a {
            var input = a.components(separatedBy: " ")
            var arr = [String]()
            
            for i in 0 ..< input.count {
                if input[i] != "" {
                    arr.append(input[i])
                }
            }
            print(arr.count)
        }
    }
}

let customclass = beakjoon1152()
customclass.solution()
