class Solution {
  func singleNumber(_ nums: [Int]) -> Int {
    var occurencies: [Int: Int] = [:]
    
    for num in nums {
      occurencies[num, default: 0] += 1 
    }
    
    for (key, value) in occurencies {
      if value == 1 {
        return key
      }
    }
    
    // Given the constraints provided by the problem 
    // we shall never reach this point
    fatalError()
  }
  
  func singleNumberOptimized(_ nums: [Int]) -> Int {
    return nums.reduce(0, ^)
  }
}

let s = Solution()
s.singleNumber([4,1,2,1,2])
s.singleNumberOptimized([4,1,2,1,2])
