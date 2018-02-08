/*
 *  Beakjoon 2439번 문제 - 별찍기 2
 */

import Foundation

let a = readLine()

if let a = a {
    
    if 1 <= Int(a)! && Int(a)! <= 100 {
        for i in 1 ... Int(a)! {
            for _ in stride(from: Int(a)! - i , to: 0, by: -1) {
                print(" ", terminator: "")
            }
            for _ in 1 ... i {
                print("*", terminator: "")
            }
            print("")
        }
    }
}
