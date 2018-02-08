/*
 *  Beakjoon 2309번 문제 - 일곱 난쟁이
 */

import Foundation

class beakjoon2309 {
    
    var arr = Array<Int>()
    let peopleCnt = 9
    
    // 9개 데이터 받기
    func getData() {
        for _ in 0 ... 8 {
            let val = readLine()
            
            if let val = val {
                arr.append(Int(val)!)
            }
        }
    }
    
    // 9개 데이터 모두 더한 값
    func getSum() -> Int {
        var res = 0
        for i in 0 ... arr.count - 1 {
            res += arr[i]
        }
        return res
    }
    
    // 솔루션
    func solution(sum: Int) {
        for i in 0 ... peopleCnt - 2 {
            for j in i + 1 ... peopleCnt - 1 {
                if (sum - (arr[i] + arr[j])) == 100 {
                    arr[i] = 0
                    arr[j] = 0
                }
            }
        }
    }

    // 출력
    func sortPrint() {
        arr.sort()
        for i in 2 ... peopleCnt - 1 {
            print(arr[i])
        }
    }
}

let customclass = beakjoon2309()
customclass.getData()
customclass.solution(sum: customclass.getSum())
customclass.sortPrint()
