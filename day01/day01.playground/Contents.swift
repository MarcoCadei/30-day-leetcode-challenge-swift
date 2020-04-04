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
    
    fatalError()
  }
}

let s = Solution()
s.singleNumber([4,1,2,1,2])
