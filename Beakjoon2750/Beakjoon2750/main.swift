/*
 *  Beakjoon 2750번 문제 - 수 정렬하기
 */

import Foundation

class beakjoon2750 {
    
    var arr = Array<Int>()
    
    // n개의 데이터 받기
    func getData() {
        let num = Int(readLine()!)!
        
        for _ in 0 ..< num {
            let val = Int(readLine()!)!
            
            arr.append(val)
        }
    }
    
    // 솔루션
    func solution() {
        arr.sort()
        
        for i in 0 ..< arr.count {
            print(arr[i])
        }
    }
}

let customclass = beakjoon2750()
customclass.getData()
customclass.solution()
