
import Foundation

let a = readLine()
let b = readLine()
let c = readLine()

if let a = a, let b = b, let c = c {
    let a_val = Int(a)!
    let b_val = Int(b)!
    let c_val = Int(c)!
    
    var result = 0
    
    if 100 <= a_val && a_val < 1000, 100 <= b_val && b_val < 1000, 100 <= c_val && c_val < 1000  {
        result = a_val * b_val * c_val
        
        var arr: [Int] = []
        var result_temp = result
        
        while result_temp > 0 {
            arr.insert(result_temp % 10, at: 0)
            result_temp = result_temp / 10
        }
        
        for i in 0 ... 9 {
            let tmp = i
            var res = 0
            for j in 0 ... arr.count - 1 {
                if tmp == arr[j] {
                    res += 1
                }
            }
            print(res)
        }
    }
}
