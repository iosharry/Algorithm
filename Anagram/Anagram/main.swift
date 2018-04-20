
/*
 Problem
 
 Two words are anagrams of one another if their letters can be rearranged to form the other word.
 
 In this challenge, you will be given a string. You must split it into two contiguous substrings, then determine the minimum number of characters to change to make the two substrings into anagrams of one another.
 
 For example, given the string 'abccde', you would break it into two parts: 'abc' and 'cde'. Note that all letters have been used, the substrings are contiguous and their lengths are equal. Now you can change 'a' and 'b' in the first substring to 'd' and 'e' to have 'dec' and 'cde' which are anagrams. Two changes were necessary.
 
 Sample Input
 
 6
 aaabbb
 ab
 abc
 mnop
 xyyx
 xaxbbbxx
 
 Sample Output
 
 3
 1
 -1
 2
 0
 1
 */

import Foundation

let input = Int(readLine()!)!

func solution(_ input: String) -> Int {
    let strArr = input.map({ String($0) })
    let count = strArr.count

    if count % 2 != 0 {
        return -1
    }
    
    let midIdx = count / 2
    
    let a = Array(strArr[..<midIdx])
    let b = Array(strArr[midIdx..<count])
    
    var aChar = Array(repeating: 0, count: 26)
    var bChar = Array(repeating: 0, count: 26)
    
    for c in a {
        let currentIdx = Int(c.unicodeScalars.first!.value) - 97
        aChar[currentIdx] += 1
    }
    
    for c in b {
        let currentIdx = Int(c.unicodeScalars.first!.value) - 97
        bChar[currentIdx] += 1
    }
    
    var res = 0
    
    for i in 0 ..< 26 {
        res += abs(aChar[i] - bChar[i])
    }
    
    return res/2
}

for _ in 0 ..< input {
    let input = readLine()!
    print(solution(input))
}
