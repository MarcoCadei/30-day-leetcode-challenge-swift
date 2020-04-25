class Node {
  var pre: Node?
  var next: Node?
  var key: Int
  var value: Int
  
  init(_ key: Int, _ value: Int){
    self.key = key
    self.value = value
  }
}

class LRUCache {
  let capacity: Int
  var head: Node =  Node(-1, -1)
  var tail: Node = Node(-1, -1)
  var count: Int = 0
  var map: [Int : Node] = [:]
  
  init(_ capacity: Int) {
    self.capacity = capacity
    self.head.next = tail
    self.tail.pre = head
  }
  
  var isFull: Bool {
    return self.count == self.capacity
  }
  
  private func moveToHead(_ node: Node){
    node.next = self.head.next
    self.head.next?.pre = node
    node.pre = head
    head.next = node
  }
  
  private func deleteNode(_ node: Node){
    node.next?.pre = node.pre
    node.pre?.next = node.next
  }
  
  func get(_ key: Int) -> Int {
    guard let node = map[key] else { return -1 }
    
    self.deleteNode(node)
    self.moveToHead(node)
    
    return node.value
  }
  
  func put(_ key: Int, _ value: Int) {
    if let node = map[key] {
      node.value = value
      self.deleteNode(node)
      self.moveToHead(node)
      return
    }
    
    let node = Node(key, value)
    self.map[key] = node
    if self.isFull, let toDelete = self.tail.pre {
      self.deleteNode(toDelete)
      self.map[toDelete.key] = nil
      self.count -= 1
    }
    self.moveToHead(node)
    self.count += 1
  }
}
