/**
 * // This is the BinaryMatrix's API interface.
 * // You should not implement it, or speculate about its implementation
 * public class BinaryMatrix {
 *     public func get(_ row: Int, _ col: Int) -> Int {}
 *     public func dimensions() -> [Int] {}
 * };
 */

class Solution {
  func leftMostColumnWithOne(_ binaryMatrix: BinaryMatrix) -> Int {
    let dimensions = binaryMatrix.dimensions()
    let rows = dimensions[0]
    let cols = dimensions[1]
    
    var minColumn: Int? = nil
    var currentRow = 0
    var currentColumn = cols - 1
    
    while currentRow < rows, currentColumn >= 0 {
      if  binaryMatrix.get(currentRow, currentColumn) == 1 {
        minColumn = currentColumn
        currentColumn -= 1
      } else {
        currentRow += 1
      }
    }
    
    return minColumn ?? -1
  }
}
