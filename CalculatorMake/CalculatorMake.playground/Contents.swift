// -- 계산기 만들기 -- //

// 문제 : Cacalator 클래스의 evaluate 함수를 완성시키시오.

import UIKit

class Calculator {
    
    func evaluate(expression: String) -> Int {
        
        let _expresssion = expression
        var sum = 0
        
        let arr = _expresssion.components(separatedBy: "+").map { (Int($0)) }
        
        for i in 0 ..< arr.count {
            if let num = arr[i] {
                sum += num
            }
        }
        return sum
    }
}

let calculator = Calculator()
let sum = calculator.evaluate(expression: "1+2+3")
print("1+2+3=\(sum)")
