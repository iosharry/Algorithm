/*
 Problem
 
 A string is said to be a child of a another string if it can be formed by deleting 0 or more characters from the other string. Given two strings of equal length, what's the longest string that can be constructed such that it is a child of both?
 
 For example, ABCD and ABDC have two children with maximum length 3, ABC and ABD. They can be formed by eliminating either the D or C from both strings. Note that we will not consider ABCD as a common child because we can't rearrange characters and ABCD  ABDC.
 
 Sample Input
 HARRY
 SALLY
 
 Sample Output
 2
 */

import Foundation

func commonChild(_ s1: String, _ s2: String) -> Int {
    
    var matrix = [[Int]].init(repeating: [Int].init(repeating: 0, count: s1.count + 1), count: s2.count + 1)
    
    for (i, obj) in s1.enumerated() {
        for (j, obj2) in s2.enumerated() {
            if obj == obj2 {
                matrix[i+1][j+1] = matrix[i][j] + 1
            }
            else {
                matrix[i+1][j+1] = max(matrix[i][j+1], matrix[i+1][j])
            }
        }
    }
    print(matrix)
    return matrix[s1.count][s2.count]
}

print(commonChild("ABCDEF", "FBDAMN"))
//commonChild("SHINCHAN", "NOHARAAA")
//commonChild("AA", "BB")
//print(commonChild("HARRY", "SALLY"))
//commonChild("AAB", "BAA")

