
/*
 Problem
 
 You are in-charge of the cake for your niece's birthday and have decided the cake will have one candle for each year of her total age. When she blows out the candles, she’ll only be able to blow out the tallest ones.
 
 For example, if your niece is turning 4 years old, and the cake will have 4 candles of height 3,2,1,3 she will be able to blow out 2 candles successfully, since the tallest candle is of height 3 and there are 2 such candles.
 
 Complete the function birthdayCakeCandles that takes your niece's age and an integer array containing height of each candle as input, and return the number of candles she can successfully blow out.
 
 Sample Input

 4
 3 2 1 3

 Sample Output
 
 2
 */

import Foundation

// Complete the birthdayCakeCandles function below.
func birthdayCakeCandles(n: Int, ar: [Int]) -> Int {
    let _n = n
    let _ar = ar
    
    let _ar_sort = _ar.sorted()
    let highHeight = _ar_sort[_n-1]
    var cnt = 0
    
    for (_, value) in _ar_sort.enumerated() where value == highHeight {
        cnt += 1
    }
    
    return cnt
}

