class Solution {
  func checkValidString(_ s: String) -> Bool {
    var leftBalance: Int = 0
    var rightBalance: Int = 0
    
    for i in 0 ..< s.count {
      if s[i] == "(" || s[i] == "*" {
        leftBalance += 1
      } else {
        leftBalance -= 1
      }
      
      if s[s.count - i - 1] == ")" || s[s.count - i - 1] == "*" {
        rightBalance += 1
      } else {
        rightBalance -= 1
      }
      
      if leftBalance < 0 || rightBalance < 0 {
        return false
      }
    }
    
    return true
  }
}

fileprivate extension String {
  subscript(i: Int) -> Character {
    let index = self.index(self.startIndex, offsetBy: i)
    return self[index]
  }
}
