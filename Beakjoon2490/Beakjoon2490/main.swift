/*
 *  백준 2490번 문제 - 윷놀이
 */

import Foundation

class beakjoon2490 {
    
    var res_arr = Array<Int>()
    
    func getData() {
        
        for _ in 1 ... 3 {
            let input = readLine()
            let input_division = input?.components(separatedBy: " ")
            
            res_arr.append(YutCheck(arr: input_division!))
        }
        resultPrint(arr: res_arr)
    }
    
    func YutCheck(arr: Array<String>) -> Int {
        
        var one_count = 0
        
        // 배열에서 0이 몇 개인지 검사
        for i in 0 ..< arr.count {
            if Int(arr[i])! == 0 {
                one_count += 1
            }
        }
        
        return one_count
    }
    
    func resultPrint(arr: Array<Int>) {
        for i in 0 ..< arr.count {
            switch arr[i] {
            case 0:
                print("E")
            case 1:
                print("A")
            case 2:
                print("B")
            case 3:
                print("C")
            case 4:
                print("D")
            default:
            return
            }
        }
    }
}

let boj_2490 = beakjoon2490()
boj_2490.getData()
