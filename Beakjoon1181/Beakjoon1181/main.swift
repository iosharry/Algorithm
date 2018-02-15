/*
 *  Beakjoon 1181번 문제 - 단어 정렬
 */

import Foundation

class beakjoon1181 {
    
    var arr = Array<String>()
    
    // n개의 데이터 받기
    func getData() {
        let num = Int(readLine()!)!
        
        for _ in 0 ..< num {
            let val = readLine()
            
            arr.append(val!)
        }
    }
    
    // 출력
    func resultPrint() {
        for _ in 0 ..< arr.count {
            for j in 0 ..< arr.count - 1 {
                if arr[j].count > arr[j+1].count {
                    arr.swapAt(j, j+1)
                }
                
                if arr[j].count == arr[j+1].count {
                    if arr[j] > arr[j+1] {
                        arr.swapAt(j, j+1)
                    }
                }
                
                if arr[j] == arr[j+1] {
                    arr[j] = ""
                }
            }
        }
        
        for i in 0 ..< arr.count {
            if arr[i] != "" { print(arr[i]) }
        }
    }
}

let customclass = beakjoon1181()
customclass.getData()
customclass.resultPrint()
