/*
 *  2941번 문제
 */

import Foundation

class Beakjoon2941 {
    
    let alphabetList = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
    
    func solution() {
        var input = readLine()!
        
        for i in 0 ..< alphabetList.count {
            input = input.replacingOccurrences(of: alphabetList[i], with: "a")
        }
        
        print(input.count)
    }
}

let boj_2941 = Beakjoon2941()
boj_2941.solution()
