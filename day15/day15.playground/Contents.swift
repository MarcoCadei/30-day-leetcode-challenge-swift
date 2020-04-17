class Solution {
  func productExceptSelf(_ nums: [Int]) -> [Int] {
    var productsSE: [Int] = {
      var result: [Int] = Array(repeating: nums[0], count: nums.count - 1)
      for i in 1 ..< nums.count - 1 {
        result[i] = result[i - 1] * nums[i]
      }
      return result
    }()
    productsSE.insert(1, at: 0)
    
    var productsES: [Int] = { 
      var result: [Int] = Array(repeating: nums[nums.count - 1], count: nums.count - 1)
      for i in (0 ..< nums.count - 2).reversed() {
        result[i] = result[i + 1] * nums[i + 1]
      }
      return result
    }()
    productsES.append(1)
    
    
    return zip(productsSE, productsES).map { $0 * $1 }
  }
}

let s = Solution()
s.productExceptSelf([1, 2, 3, 4])
