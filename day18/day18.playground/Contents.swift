class Solution {
  func minPathSum(_ grid: [[Int]]) -> Int {
    var grid = grid
    return minPathSum(&grid)
  }
  
  func minPathSum(_ grid: inout [[Int]]) -> Int {
    for y in 0 ..< grid.count {
      for x in 0 ..< grid[y].count {
        switch (x, y) {
        case (0, 0): break
        case (let x, 0) where x != 0: grid[y][x] = grid[y][x] + grid[y][x - 1]
        case (0, let y) where y != 0: grid[y][x] = grid[y][x] + grid[y - 1][x]
        case (let x, let y) where x != 0 && y != 0: grid[y][x] = grid[y][x] + min(grid[y][x - 1], grid[y - 1][x])
        default: break
        }
      }
    }
    
    return grid[grid.count - 1][grid[grid.count - 1].count - 1]
  }
}

let s = Solution()
s.minPathSum([
  [1, 3, 1],
  [1, 5, 1],
  [4, 2, 1],
])
