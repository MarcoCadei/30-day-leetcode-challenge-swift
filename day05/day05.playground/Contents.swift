class Solution {
  func maxProfit(_ prices: [Int]) -> Int {
    guard !prices.isEmpty else { return 0 }
    var profit: Int = 0
    
    for i in 0 ..< prices.count - 1 {
      if prices[i + 1] > prices[i] {
        profit += prices[i + 1] - prices[i]
      }
    }
    
    return profit
  }
}

let s = Solution()
s.maxProfit([7,1,5,3,6,4])
