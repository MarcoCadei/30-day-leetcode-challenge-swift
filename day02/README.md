# [Happy Number](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3284/)

## Problem

Write an algorithm to determine if a number is "happy".

A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

```
Example: 

Input: 19
Output: true
Explanation: 
12 + 92 = 82
82 + 22 = 68
62 + 82 = 100
12 + 02 + 02 = 1
```

## Solution

This problem may seem hard at first, but the text gives us a huge tip:
> ... repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle

Therefore, given that following the described process the number can't grow indefinetely it is just a matter of checking whether, following the procedure, there's a loop or not. To do that we can use a `Set`.
This soultion has a **space complexity(n) = O(n)**.

### Optimizations
If we think of the series of numbers a linked in a list, we can explot the `Floyd's cycle detection algorithm`[https://en.wikipedia.org/wiki/Cycle_detection] and using a `slow pointer` and a `fast pointer` we check if the cycle is detected on `1` in which case the number is happy, otherwise it is sad :( .
With this optimization we can get the **space complexity down to O(1)**.
