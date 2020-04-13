class Solution {
  func findMaxLength(_ nums: [Int]) -> Int {
    var counters: [Int: Int] = [0 : -1]
    var counter: Int = 0
    var result: Int = 0
    
    for (index, num) in nums.enumerated() {
      counter += num == 0 ? -1 : 1
      if let lastIndex = counters[counter] {
        result = max(result, index - lastIndex)
      } else {
        counters[counter] = index
      }
    }
    
    return result
  }
}

let s = Solution()
s.findMaxLength([0, 1])
