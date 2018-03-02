/*
 *  백준 5543번 문제 - 상근날드
 */

import Foundation

class Beakjoon5543 {
    
    var hamburger = Array<Int>()
    var drink = Array<Int>()
    
    func getData() {
        for i in 1 ... 5 {
            let input = readLine()!
            
            // 햄버거, 음료수 각각 배열에 append
            if i < 4 {
                hamburger.append(Int(input)!)
            }
            else {
                drink.append(Int(input)!)
            }
        }
        solution()
    }
    
    func solution() {
        // 가격 순으로 정렬
        hamburger.sort()
        drink.sort()
        
        // 햄버거 + 음료수 - 50원(할인)
        let res = hamburger[0] + drink[0] - 50
        
        // 출력
        print(res)
    }
}

let beakjoon = Beakjoon5543()
beakjoon.getData()
