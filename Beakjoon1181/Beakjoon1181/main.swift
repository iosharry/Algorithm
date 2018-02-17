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
    
    // 출력
    func resultPrint() {
        
        // 1. Set을 이용해서 중복 값 제거
        arr = Array(Set(arr))
        
        // 2. 사전 순으로 정렬
        arr.sort()
        
        // 3. 버블 정렬을 이용하여 길이가 짧은 것부터 정렬
        for _ in 0 ..< arr.count {
            for j in 0 ..< arr.count - 1 {
                if arr[j].count > arr[j+1].count {
                    arr.swapAt(j, j+1)
                }
            }
        }
        
        // 최종 출력
        for i in 0 ..< arr.count {
            print(arr[i])
        }
    }
}

let customclass = beakjoon1181()
customclass.getData()
customclass.resultPrint()

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
