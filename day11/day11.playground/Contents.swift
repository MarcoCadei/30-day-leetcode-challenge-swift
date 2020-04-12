public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  
  init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }
}

class Solution {
  private var result: Int = 0
  
  func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    let _ = height(root)
    return result
  }
  
  private func height(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    
    let lh = height(node.left)
    let rh = height(node.right)
    
    self.result = max(self.result, lh + rh)
    
    return 1 + max(lh, rh)
  }
}
