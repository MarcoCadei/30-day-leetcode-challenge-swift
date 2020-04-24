class Solution {
  func rangeBitwiseAnd(_ m: Int, _ n: Int) -> Int {
    var k: Int = 0
    var m: Int = m
    var n: Int = n
    
    while n != m {
      n >>= 1
      m >>= 1
      k += 1
    }
    
    return n << k
  }
}
