class Solution {
  func canJump(_ nums: [Int]) -> Bool {
    var currentPosition: Int = 0
    var reachable: Int = nums[0]
    
    while currentPosition < nums.count - 1, currentPosition <= reachable {
      reachable = max(reachable, nums[currentPosition] + currentPosition)
      currentPosition += 1
    }  
    
    return reachable >= nums.count - 1
  }
}

let s = Solution()
s.canJump([3,0,8,2,0,0,1])
