# [Bitwise AND of Numbers Range](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/531/week-4/3308/)

## Problem

Given a range [m, n] where 0 <= m <= n <= 2147483647, return the bitwise AND of all numbers in this range, inclusive.

```
Example 1:

Input: [5,7]
Output: 4
```
```
Example 2:

Input: [0,1]
Output: 0
```

## Solution

The brute force approach is to compute the bitwise and for each number between the two given as input, however if we consider the input as the number of bits then **time complexity(b) = O(2^b)** where `b` is the number of bits of the bigger number (considering the time to perform the `and` constant). Space complexity is of course **O(1)**.

### Optimizations

To improve on the previous algorithm we have to observe that the solution is the common prefix of the two number + all zeros. This can be hard to see at first, but is obvious as soon as we draw the sequence of binary numbers.  
Based on the previous observation we can keep shifting right as long as the two numbers are different from each other (if they don't have a common prefix we'll go down to `0`) and then shift one or the other (they are equal now since we looped as long as they were different) left by a number of positions equals to the number of loops executed before.  
This solution has **time complexity(n) = O(n)** and **space complexity(n) = O(n)**.
