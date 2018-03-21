/*
 *  백준 9012번 문제 - 괄호
 */

import Foundation

class Beakjoon9012 {
    
    func main() {
        let T = Int(readLine()!)!
    
        for _ in 0 ..< T {
            let input = readLine()!
            check(str: input) == true ? print("YES") : print("NO")
        }
    }
    
    func check(str: String) -> Bool {
        var items = [Character]()
        
        for i in str {
            if i == "(" {
                items.append(i)
            }
            else if i == ")" {
                if items.isEmpty {
                    return false
                }
                else {
                    if items.popLast() != "(" {
                        return false
                    }
                }
            }
        }
        return items.isEmpty
    }
}

let boj_9012 = Beakjoon9012()
boj_9012.main()
