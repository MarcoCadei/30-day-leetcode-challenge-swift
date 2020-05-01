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

extension TreeNode {
  var isLeaf: Bool {
    return self.left == nil && self.right == nil
  }
}

class Solution {
  func isValidSequence(_ root: TreeNode?, _ arr: [Int], arrayIndex: Int = 0) -> Bool {
    guard 
      let node = root,
      arr[arrayIndex] == node.val 
    else { return false }
    guard arrayIndex < arr.count - 1 else { return node.isLeaf }
    return self.isValidSequence(node.left, arr, arrayIndex: arrayIndex + 1) ||
           self.isValidSequence(node.right, arr, arrayIndex: arrayIndex + 1)
  }
}
