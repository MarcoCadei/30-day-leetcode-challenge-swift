public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { self.val = 0; self.left = nil; self.right = nil; }
  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}

class Solution {
  var result: Int = Int.min
  
  func maxPathSum(_ root: TreeNode?) -> Int {
    self.maxPathFrom(node: root)
    return self.result
  }
  
  private func maxPathFrom(node: TreeNode?) -> Int {
    guard let node = node else { return 0 }
    
    let left = max(0, self.maxPathFrom(node: node.left))
    let right = max(0, self.maxPathFrom(node: node.right))
    
    self.result = max(left + right + node.val, result)
    return max(left, right) + node.val
  }
}
