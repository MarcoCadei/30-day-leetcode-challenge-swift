class Solution {
  func groupAnagrams(_ strs: [String]) -> [[String]] {
    var anagrams: [String: [String]] = [:]
    
    for str in strs {
      let strOrdered = String(str.sorted())
      anagrams[strOrdered, default: []] += [str]
    }
    
    return Array(anagrams.values)
  }
  
  func groupAnagramsOptimized(_ strs: [String]) -> [[String]] {
    var anagrams: [[Int]: [String]] = [:]
    let baseValue = Int(UnicodeScalar("a").value)
    for str in strs {
      var key: [Int] = Array(repeating: 0, count: 26)
      str.forEach { char in key[Int(UnicodeScalar(String(char))!.value) - baseValue] += 1 }
      anagrams[key, default: []] += [str]
    }
    
    return Array(anagrams.values)
  }
}

let s = Solution()
s.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
s.groupAnagramsOptimized(["eat", "tea", "tan", "ate", "nat", "bat"])
