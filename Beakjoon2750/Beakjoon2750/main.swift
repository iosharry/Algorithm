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
    
    // 삽입정렬
    func insertionSort() {
        for i in 0 ... arr.count - 1 {
            var temp = i
            while temp > 0 && arr[temp] < arr[temp - 1] {
                arr.swapAt(temp - 1, temp)
                temp -= 1
            }
        }
    }
    
    // 버블정렬
    func bubbleSort() {
        for _ in 0 ..< arr.count {
            for j in 0 ..< arr.count - 1 {
                if arr[j] > arr[j+1] {
                    arr.swapAt(j, j+1)
                }
            }
        }
    }
    
    // 출력
    func resultPrint() {
        for i in 0 ..< arr.count {
            print(arr[i])
        }
    }
}
