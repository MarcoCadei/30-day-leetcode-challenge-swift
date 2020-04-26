# [Longest Common Subsequence](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/531/week-4/3311/)

## Problem

Given two strings text1 and text2, return the length of their longest common subsequence.

A subsequence of a string is a new string generated from the original string with some characters(can be none) deleted without changing the relative order of the remaining characters. (eg, "ace" is a subsequence of "abcde" while "aec" is not). A common subsequence of two strings is a subsequence that is common to both strings.

If there is no common subsequence, return 0.

```
Example 1:

Input: text1 = "abcde", text2 = "ace" 
Output: 3  
Explanation: The longest common subsequence is "ace" and its length is 3.
```
```
Example 2:

Input: text1 = "abc", text2 = "abc"
Output: 3
Explanation: The longest common subsequence is "abc" and its length is 3.
```
```
Example 3:

Input: text1 = "abc", text2 = "def"
Output: 0
Explanation: There is no such common subsequence, so the result is 0.
```

**Constraints**:

- `1 <= text1.length <= 1000`
- `1 <= text2.length <= 1000`
The input strings consist of lowercase English characters only.

## Solution

At first this problem appears to be really hard because there are many different possible cases, however if we look at it upside down (aka, starting from the bottom) we can see there are not so many options: 
- if  `text1[text1.count - 1] == text2[text2.count -1]`  then the lcs (Longest Common Subsequence) is the lcs of the two strings minus the last character + 1
- otherwise, the lcs is the max between the `lcs of text1 with text2 minus the last character ` and the `lcs of text1 minus the last character with text2`  
**time complexity(n, m) = O(n*m)** and **space complexity(n, m) = O(n * m)**.

### Optimizations

One way to improve on the previous result is to observe that we don't need the whole matrix of dimension `n * m` but only the previous row, therefore we can reduce space complexity down to `O(min(n, m))`.
