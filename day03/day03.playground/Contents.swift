class Solution {
  func maxSubArray(_ nums: [Int]) -> Int {
    var maxSum: Int = nums[0]
    var maxAtCurrentPosition: Int = 0
    
    for num in nums {
      maxAtCurrentPosition += num
      maxSum = max(maxSum, maxAtCurrentPosition)
      
      if maxAtCurrentPosition <= 0 {
        maxAtCurrentPosition = 0
      }
    }
    
    return maxSum
  }
}

let s = Solution()
s.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
