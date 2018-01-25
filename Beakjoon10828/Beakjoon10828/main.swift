import Foundation

struct Stack<Int> {
    
    var items = [Int]()
    
    mutating func push(_ items: Int) {
        self.items.append(items)
    }
    
    mutating func pop() -> Int?{
        return self.items.popLast()
    }
    
    func size() {
        print(self.items.count)
    }
    
    func isEmpty() -> Bool {
        return self.items.isEmpty
    }
    
    mutating func peek() -> Int {
        return self.items.last!
    }
}

class beakjoon10828 {
    
    var items = Stack<Int>()
    
    // 솔루션
    func solution(_ count: Int) {
        
        // count
        for _ in 1 ... count {
            
            let input = readLine()?.components(separatedBy: " ")
            
            if let input = input {
                let input_val = input[0]
                // push X
                if input_val == "push" {
                    items.push(Int(input[1])!)
                }
                // pop
                else if input_val == "pop" {
                    if !items.isEmpty() {
                        print(items.pop()!)
                    }
                    // items 비어있을 때
                    else {
                        print(-1)
                    }
                }
                // size
                else if input_val == "size" {
                    items.size()
                }
                // empty
                else if input_val == "empty" {
                    if !items.isEmpty() {
                        print(0)
                    }
                    // items 비어있을 때
                    else {
                        print(1)
                    }
                }
                // top
                else if input_val == "top" {
                    if !items.isEmpty() {
                        print(items.peek())
                    }
                    // items 비어있을 때
                    else {
                        print(-1)
                    }
                }
            }
        }
    }
}

let count = readLine()
let customclass = beakjoon10828()
customclass.solution(Int(count!)!)

