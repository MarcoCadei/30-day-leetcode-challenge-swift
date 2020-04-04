# [Single Number](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3283/)

## Problem

Given a non-empty array of integers, every element appears twice except for one. Find that single one.

**Note:**

Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

```
Example 1:
Input: [2,2,1]
Output: 1

Example 2:
Input: [4,1,2,1,2]
Output: 4
```

## Solution

This problem can be easily solved with the use of a *dictionary*, storing for each number in the given sequence the number of occurrences.  
This gives a solution with **time complexity = O(n)**, but a **space complexity = O(n)**. 

### Optimizations
As the text of the problem suggests we can improve on the space complexity.  
Given that each number appears twice except the one we have to return the **XOR** operator immediately comes to mind.
In fact we can exploit that `A XOR A = 0`.
To iterate this operation on all elements of the sequence we can use the `reduce` function, which allows to obtain a really concise and clean solution.  
With this optimization we obtain **time complexity = O(n)** and **space complexity = O(1)**.
