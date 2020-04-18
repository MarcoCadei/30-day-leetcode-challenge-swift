# [Perform String Shifts](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/529/week-2/3299/)

## Problem

You are given a string s containing lowercase English letters, and a matrix shift, where shift[i] = [direction, amount]:

- `direction` can be 0 (for left shift) or 1 (for right shift). 
- `amount` is the amount by which string s is to be shifted.
- A left shift by 1 means remove the first character of s and append it to the end.
- Similarly, a right shift by 1 means remove the last character of s and add it to the beginning.
Return the final string after all operations.

```
Example 1:

Input: s = "abc", shift = [[0,1],[1,2]]
Output: "cab"
Explanation: 
[0,1] means shift to left by 1. "abc" -> "bca"
[1,2] means shift to right by 2. "bca" -> "cab"
```
```
Example 2:

Input: s = "abcdefg", shift = [[1,1],[1,1],[0,2],[1,3]]
Output: "efgabcd"
Explanation:  
[1,1] means shift to right by 1. "abcdefg" -> "gabcdef"
[1,1] means shift to right by 1. "gabcdef" -> "fgabcde"
[0,2] means shift to left by 2. "fgabcde" -> "abcdefg"
[1,3] means shift to right by 3. "abcdefg" -> "efgabcd"
```
 
**Constraints**:

- `1 <= s.length <= 100`
- s only contains lower case English letters.
- `1 <= shift.length <= 100`
- `shift[i].length == 2`
- `0 <= shift[i][0] <= 1`
- `0 <= shift[i][1] <= 100`

## Solution

An easy solution to this problem would be to simply simulate the process as described. Of course this would work but the time needed to compute the solution could be very high since building the "shifted" string requires `O(n)`. If we call `n` the dimension of `s` and `m` the dimension of `shift` the time complexity of this algorithm is `O(n * m)` and the space complexity `O(n + m)`.

### Optimizations

On way to improve on the previously discussed solution is to observe that:
- doing two shifts in opposite directions is like not doing a shift at all
- the order of the elements in `shift` doesn't matter, the end result is always the same
- an element such as `[0, 3]` in `shift` is equal to these elements `[0, 1], [0, 1], [0, 1]`
Given all the observations above a more efficient solution to the problem is to count the shift we have to do the left (this is arbitrary, we could count the shift to the right) summing `shift[i][1] if shift[i][0] == 0 else -shift[i][1] for all i [0, s.count)`. And finally perform a single shift.  
The time complexity is now `O(n + m)`.
