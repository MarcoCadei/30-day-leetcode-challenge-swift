public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }
}

class Solution {
  func bstFromPreorder(_ preorder: [Int]) -> TreeNode? {
    return self.tree(preorder, start: 0, end: preorder.count)
  }
  
  func tree(_ preorder: [Int], start: Int, end: Int) -> TreeNode? {
    guard start < end else { return nil }
    
    let root = TreeNode(preorder[start])
    let nextStart = preorder[start ..< end].firstIndex(where: { $0 > preorder[start] }) ?? end
    
    root.left = self.tree(preorder, start: start + 1, end: nextStart)
    root.right = self.tree(preorder, start: nextStart, end: end)
    
    return root
  }
}

let s = Solution()
let a = s.bstFromPreorder([8, 5, 1, 7, 10, 12])
