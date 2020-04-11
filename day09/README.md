# [Backspace String Compare](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/529/week-2/3291/)

## Problem

Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.

```
Example 1:

Input: S = "ab#c", T = "ad#c"
Output: true
Explanation: Both S and T become "ac".
```

```
Example 2:

Input: S = "ab##", T = "c#d#"
Output: true
Explanation: Both S and T become "".
```

```
Example 3:

Input: S = "a##c", T = "#a#c"
Output: true
Explanation: Both S and T become "c".
```

```
Example 4:

Input: S = "a#c", T = "b"
Output: false
Explanation: S becomes "c" while T becomes "b".
```

**Note:**

1. `1 <= S.length <= 200`
2. `1 <= T.length <= 200`
3. `S` and `T` only contain lowercase letters and `'#'` characters.  

Follow up:
- Can you solve it in `O(N)` time and `O(1)` space?

## Solution

An easy solution and the one that comes to mind immediately is to simulate what would happen if we were writing the given sequence for each of the two given strings and then compare the result. We could that with the help of stacks: insert the character if it is not a `#` and delete the top character if we find a `#`.  This solution has a **time complexity(n) = O(n)** and a **space complexity(n) = O(n)**.

### Optimizations

As the notes of the problem suggest we can improve the solution by trying to reduce the space complexity down to `O(1)`. We can do that by using two pointers (one for each string).  
We can iterate each string in reverse order, skipping characters if they are deleted by previous `#` and after executing this operation we compare the current char for `S` and `T` if they are equal we decrease the current index and keep going, otherwise we return `false` immediately.  
This solution has a **time complexity(n) = O(n)** and a **space complexity(n) = O(1)**.
