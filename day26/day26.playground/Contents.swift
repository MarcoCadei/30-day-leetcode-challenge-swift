class Solution {
  func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    let rows: Int = text1.count
    let columns: Int = text2.count
    var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: columns + 1), count: rows + 1)
    
    let text1 = Array(text1)
    let text2 = Array(text2)
    for row in 1 ... rows {
      for column in 1 ... columns {
        if text1[row - 1] == text2[column - 1] {
          dp[row][column] = dp[row - 1][column - 1] + 1
        } else {
          dp[row][column] = max(dp[row][column - 1], dp[row - 1][column])
        }
      }
    }
    
    return dp[rows][columns]
  }
}

let s = Solution()
s.longestCommonSubsequence("bsbininm", "jmjkbkjkv")
