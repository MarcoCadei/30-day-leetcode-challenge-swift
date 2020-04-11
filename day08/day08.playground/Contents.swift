class Solution {
  func middleNode(_ head: ListNode?) -> ListNode? {
    var slowPointer: ListNode? = head
    var fastPointer: ListNode? = head
    
    while fastPointer?.next != nil {
      slowPointer = slowPointer?.next
      fastPointer = fastPointer?.next?.next
    }
    
    return slowPointer
  }
}
