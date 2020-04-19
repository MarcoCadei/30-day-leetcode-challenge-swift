class Solution {
  func search(_ nums: [Int], _ target: Int) -> Int {
    guard nums.count > 0 else { return -1}
    var left: Int = 0
    var right: Int = nums.count - 1
    var middle: Int = 0
    
    while left <= right {
      middle = left + Int((right - left) / 2)
      
      if target == nums[middle] { return middle }
      if nums[middle] <= nums[right] {
        if nums[middle] < target, target <= nums[right] {
          left = middle + 1
        } else {
          right = middle - 1
        }
      } else {
        if nums[left] <= target, target < nums[middle] {
          right = middle - 1
        } else {
          left = middle + 1
        }
      }
    }
    
    return -1
  }
}

let s = Solution()
s.search([1], 1)

