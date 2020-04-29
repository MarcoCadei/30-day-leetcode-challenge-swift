class Solution {
  func maximalSquare(_ matrix: [[Character]]) -> Int {
    guard !matrix.isEmpty else { return 0 }
    let rows = matrix.count
    let columns = matrix[0].count
    
    var result = 0
    var dp = Array(repeating: Array(repeating: 0, count: columns + 1), count: rows + 1)
    
    for row in 1 ... rows {
      for column in 1 ... columns {
        guard matrix[row - 1][column - 1] == "1" else { continue }
        dp[row][column] = min(dp[row - 1][column - 1], dp[row - 1][column], dp[row][column - 1]) + 1
        result = max(dp[row][column], result)
      }
    }
    
    return result * result
  }
}
