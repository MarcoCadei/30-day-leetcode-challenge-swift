class Solution {
  func stringShift(_ s: String, _ shift: [[Int]]) -> String {
    let shiftLeft = shift.reduce(0) { result, next in
      return result + (next[0] == 0 ? 1 : -1) * next[1]
    } % s.count
    
    let correctShift = shiftLeft >= 0 ? shiftLeft : s.count + shiftLeft
    let shiftIndex = s.index(s.startIndex, offsetBy: correctShift)
    return String(s[shiftIndex ..< s.endIndex] + s[s.startIndex ..< shiftIndex])
  }
}

let s = Solution()
s.stringShift("abc", [[0, 1], [1, 2]])
