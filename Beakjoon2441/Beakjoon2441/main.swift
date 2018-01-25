
import Foundation

let a = readLine()

if let a = a {
    if 1 <= Int(a)! && Int(a)! <= 100 {
        for i in stride(from: Int(a)!, to: 0, by: -1) {
            for _ in stride(from: 0, to: Int(a)! - i, by: 1) {
                print(" ", terminator:"")
            }
            for _ in 1 ... i {
                print("*", terminator:"")
            }
            print("")
        }
    }
}
