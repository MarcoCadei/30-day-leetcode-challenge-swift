class Solution {
  func countElements(_ arr: [Int]) -> Int {
    let elements = Set(arr)
    return arr.filter { elements.contains($0 + 1) } .count
  }
}
