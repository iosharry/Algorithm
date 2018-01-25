
import Foundation

struct Queue<Int> {
    
    var items = [Int]()
    
    mutating func enqueue(_ items: Int) {
        self.items.append(items)
    }
    
    mutating func dequeue() -> Int?{
        return self.items.removeFirst()
    }
    
    func size() {
        print(self.items.count)
    }
    
    func isEmpty() -> Bool {
        return self.items.isEmpty
    }
    
    func front() -> Int {
        return self.items.first!
    }
    
    func back() -> Int {
        return self.items.last!
    }
}

class beakjoon10845 {
    var items = Queue<Int>()
    
    func solution(_ count: Int) {
        
        for _ in 1 ... count {
            let input = readLine()?.components(separatedBy: " ")
            
            if let input = input {
                let input_val = input[0]
                
                // push
                if input_val == "push" {
                    items.enqueue(Int(input[1])!)
                }
                // pop
                else if input_val == "pop" {
                    if !items.isEmpty() {
                        print(items.dequeue()!)
                    }
                    else { print(-1) }
                }
                // size
                else if input_val == "size" {
                    items.size()
                }
                // empty
                else if input_val == "empty" {
                    if !items.isEmpty(){
                        print(0)
                    }
                    else { print(1) }
                }
                // front
                else if input_val == "front" {
                    if !items.isEmpty() {
                        print(items.front())
                    }
                    else { print(-1) }
                }
                // back
                else if input_val == "back" {
                    if !items.isEmpty() {
                        print(items.back())
                    }
                    else { print(-1) }
                }
            }
        }
    }
}

let count = readLine()
let customclass = beakjoon10845()
customclass.solution(Int(count!)!)
