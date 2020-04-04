class Solution {
  func moveZeroes(_ nums: inout [Int]) {
    var zeroPointer: Int = 0
    var numsPointer: Int = 0
    
    while numsPointer < nums.count {
      if nums[zeroPointer] == 0, nums[numsPointer] != 0 {
        nums.swapAt(numsPointer, zeroPointer)
        zeroPointer += 1
      }
      if nums[zeroPointer] != 0 { 
        zeroPointer += 1 
      }
      numsPointer += 1
    }
  }
}

let s = Solution()
var input: [Int] = [1, 0, 1]
s.moveZeroes(&input)
