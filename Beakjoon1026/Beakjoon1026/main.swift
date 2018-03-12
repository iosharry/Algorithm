/*
 *  백준 1026번 문제 - 보물
 */

import Foundation

class Beakjoon1026 {
    
    var A_arr = [Int]()
    var B_arr = [Int]()
    var N: Int!
    
    func getData() {
        N = Int(readLine()!)!
    
        A_arr = readLine()!.components(separatedBy: " ").map { Int($0)! }
        B_arr = readLine()!.components(separatedBy: " ").map { Int($0)! }
        
        solution()
    }
    
    func solution() {
        var res = 0
        let sortedA = A_arr.sorted()
        let sortedB = B_arr.sorted(by: >)
        
        for i in 0 ..< N {
            res += sortedA[i] * sortedB[i]
        }
        print(res)
    }
}


let boj_1026 = Beakjoon1026()
boj_1026.getData()
