
class MinStack {
  private var stack: [(value: Int, min: Int)] = []
  
  func push(_ x: Int) {
    self.stack.append((x, min(self.stack.last?.min ?? x, x)))
  }
  
  func pop() {
    self.stack.remove(at: self.stack.count - 1)
  }
  
  func top() -> Int {
    return self.stack[self.stack.count - 1].value
  }
  
  func getMin() -> Int {
    return self.stack.last!.min
  }
}
