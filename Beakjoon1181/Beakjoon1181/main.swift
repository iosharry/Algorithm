/*
 *  Beakjoon 1181번 문제 - 단어 정렬
 */

import Foundation

class beakjoon1181 {
    
    var arr = Array<String>()
    
    // n 개의 데이터 받기
    func getData() {
        let num = Int(readLine()!)!
        
        for _ in 0 ..< num {
            let val = readLine()
    
            arr.append(val!)
        }
    }
    
    func solution() {
        
        // Set을 이용해서 중복 값 제거
        arr = Array(Set(arr))
        
        arr.sort { (s1, s2) -> Bool in
            if s1.count < s2.count {
                return true
            }
            else if s1.count == s2.count {
                return s1 < s2
            }
            return false
        }
        
        // 출력
        for i in arr {
            print(i)
        }
    }
}

let customclass = beakjoon1181()
customclass.getData()
customclass.solution()

/*
but
i
wont
hesitate
no
more
no
more
it
cannot
wait
im
yours
 */
