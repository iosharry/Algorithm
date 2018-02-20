/*
 *  백준 2675번 문제 - 문자열 반복
 */

import Foundation

class beakjoon2675 {
    
    var arr = Array<String>()
    
    // n개의 데이터 받기
    func getData() {
        let num = Int(readLine()!)!
        
        for _ in 0 ..< num {
            let val = readLine()
            
            arr.append(val!)
        }

        divideArr()
    }
    
    // 배열 분리
    func divideArr() {
        for i in 0 ..< arr.count {
            // 반복횟수 R과 문자열 S를 분리
            let arr_res = arr[i].components(separatedBy: " ") // ["3", "ABC"]
            
            // 문자열 S를 분해
            let str_res = arr_res[1].map { String($0) } // ["A", "B", "C"]
            
            resultPrint(Int(arr_res[0])!, str_res)
        }
    }
    
    // 출력
    func resultPrint(_ num: Int, _ res: [String]) {
        var res = res
        
        for _ in 0 ..< res.count {
            for _ in 0 ..< num {
                print(res[0], terminator: "")
            }
            res.remove(at: 0)
        }
        print("")
    }
}

let customclass = beakjoon2675()
customclass.getData()

