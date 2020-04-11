class Solution {
  func backspaceCompare(_ S: String, _ T: String) -> Bool {
    var i = S.count - 1
    var j = T.count - 1
    
    var skipS: Int = 0
    var skipT: Int = 0
    
    while i >= 0 || j >= 0 {
      // Go to the first valid character of S
      while i >= 0 {
        if S[i] == "#" { 
          skipS += 1
          i -= 1
        } else if skipS > 0 {
          skipS -= 1
          i -= 1
        } else {
          break
        }
      }
      
      // Go to the first valid character of T
      while j >= 0 {
        if T[j] == "#" { 
          skipT += 1
          j -= 1
        } else if skipT > 0 {
          skipT -= 1
          j -= 1
        } else {
          break
        }
      }
      
      if i >= 0, j >= 0, S[i] != T[j] {
        return false
      }
      if (i >= 0) != (j >= 0) {
        return false
      }
      
      i -= 1
      j -= 1
    }
    
    return true
  }
}

fileprivate extension String {
  subscript(offset: Int) -> Character {
    return self[self.index(self.startIndex, offsetBy: offset)]
  }
}

