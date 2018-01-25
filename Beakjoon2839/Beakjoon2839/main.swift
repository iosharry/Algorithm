
import Foundation

let a = readLine()

if let a = a {
    let input_val = Int(a)!
    if 3 <= input_val && input_val <= 5000 {
        var threeKg_val = 0 // 3kg 몫
        var fiveKg_val = input_val / 5 // 5kg 몫
        var fiveKg_remain = input_val % 5 // 5로 나눈 나머지
        
        while fiveKg_val >= 0 {
            if fiveKg_remain % 3 == 0 {
                threeKg_val = fiveKg_remain / 3
                fiveKg_remain %= 3
                break
            }
            fiveKg_val -= 1
            fiveKg_remain += 5
        }
        fiveKg_remain == 0 ? print("\(fiveKg_val + threeKg_val)") : print(-1)
    }
}
