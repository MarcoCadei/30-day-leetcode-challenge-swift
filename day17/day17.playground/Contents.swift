class Solution {
  func numIslands(_ grid: [[Character]]) -> Int {
    var grid = grid
    var islands: Int = 0
    
    for y in 0 ..< grid.count {
      for x in 0 ..< grid[y].count {
        if grid[y][x] == "1" {
          islands += 1
          explore(&grid, fromX: x, fromY: y)
        }
      }
    }
    
    return islands
  }
  
  private func explore(_ grid: inout [[Character]], fromX x: Int, fromY y: Int) {
    guard y >= 0, y < grid.count, x >= 0, x < grid[y].count, grid[y][x] == "1" else { return }
    
    grid[y][x] = "*"
    explore(&grid, fromX: x - 1, fromY: y)
    explore(&grid, fromX: x, fromY: y - 1)
    explore(&grid, fromX: x + 1, fromY: y)
    explore(&grid, fromX: x, fromY: y + 1)
  }
}

let s = Solution()
s.numIslands([
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
])
