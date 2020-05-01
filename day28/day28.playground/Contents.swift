public class Node<T> {
  var value: T
  var next: Node<T>?
  weak var previous: Node<T>?

  init(value: T) {
    self.value = value
  }
}

public class LinkedList<T> {
  fileprivate var head: Node<T>?
  private var tail: Node<T>?

  public var isEmpty: Bool {
    return head == nil
  }
  
  public var first: Node<T>? {
    return head
  }

  public var last: Node<T>? {
    return tail
  }

  public func append(value: T) {
    let newNode = Node(value: value)
    append(node: newNode)
  }
  
  public func append(node newNode: Node<T>) {
    if let tailNode = tail {
      newNode.previous = tailNode
      tailNode.next = newNode
    } else {
      head = newNode
    }
    tail = newNode
  }

  public func remove(node: Node<T>) -> T {
    let prev = node.previous
    let next = node.next

    if let prev = prev {
      prev.next = next
    } else {
      head = next
    }
    next?.previous = prev

    if next == nil {
      tail = prev
    }

    node.previous = nil
    node.next = nil
    
    return node.value
  }
}

// MARK: - Extension to enable the standard conversion of a list to String
extension LinkedList: CustomStringConvertible {
    public var description: String {
        var s = "["
        var node = head
        while let nd = node {
            s += "\(nd.value)"
            node = nd.next
            if node != nil { s += ", " }
        }
        return s + "]"
    }
}

class FirstUnique {
  
  let uniqueNumbers: LinkedList<Int>
  var count: [Int: Node<Int>]
  
  init(_ nums: [Int]) {
    self.uniqueNumbers = LinkedList()
    self.count = [:]
    
    for num in nums {
      self.add(num)
    }
  }
  
  func showFirstUnique() -> Int {
    guard let first = self.uniqueNumbers.head else { return -1 }
    return first.value
  }
  
  func add(_ value: Int) {
    if let node = self.count[value] {
      if node.value != -1 {
        self.uniqueNumbers.remove(node: node)
        node.value = -1
        self.count[value] = node
      } else {
        return
      }
    } else {
      let newNode = Node<Int>(value: value)
      self.uniqueNumbers.append(node: newNode)
      self.count[value] = newNode
    }
  }
}
