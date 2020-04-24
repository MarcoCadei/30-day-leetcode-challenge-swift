class Solution {
  func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var result: Int = 0
    var sum: Int = 0
    
    for start in 0 ..< nums.count {
      sum = 0
      for end in start ..< nums.count {
        sum += nums[end]
        
        if sum == k {
          result += 1
        }
      }
    }
    
    return result
  }
}
