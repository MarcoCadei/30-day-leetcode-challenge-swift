class Solution {
  func isHappy(_ n: Int) -> Bool {
    var slowPointer: Int = n
    var fastPointer: Int = n
    
    repeat {
      slowPointer = squareDigitSum(slowPointer)
      fastPointer = squareDigitSum(squareDigitSum(fastPointer))
    } while slowPointer != fastPointer
    
    return slowPointer == 1
  }
  
  /// Computes the sum of the suqared digits of the given number
  func squareDigitSum(_ n: Int) -> Int {
    var sum: Int = 0
    var n: Int = n
    
    while n > 0 {
      sum += (n % 10) * (n % 10)
      n /= 10
    }
    
    return sum
  }
}

let s = Solution()
s.isHappy(19)
s.isHappy(4)
