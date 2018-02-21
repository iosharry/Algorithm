/*
 *  백준 1978번 문제 - 소수 찾기
 */

import Foundation

class beakjoon1978 {
    
    var arr = Array<Int>()
    
    func getData() {
        let input = Int(readLine()!)!
        let input2 = readLine()!
        
        resultPrint(input, input2)
    }
    
    // 출력
    func resultPrint(_ input: Int, _ input2: String) {
        var input = input
        
        let prime = input2.components(separatedBy: " ")
        
        for i in 0 ..< prime.count {
            
            if !isPrime(Int(prime[i])!) {
                input -= 1
            }
        }
        print(input)
    }
    
    // 소수 판별
    func isPrime(_ val: Int) -> Bool {
        var flag = true
        
        if val < 2 { flag = false }
        else if val > 2 {
            for i in 2 ..< val {
                if val % i == 0 {
                    flag = false
                }
            }
        }
        
        return flag
    }
}

let customclass = beakjoon1978()
customclass.getData()

