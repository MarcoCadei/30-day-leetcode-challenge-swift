# [Move Zeroes](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3286/)

## Problem

Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

```
Example:

Input: [0,1,0,3,12]
Output: [1,3,12,0,0]
```

**Note**:

You must do this in-place without making a copy of the array.
Minimize the total number of operations.

## Solution
The first approach to solve this problem would be to create a temporary array, iterate through the first, place all the non-zero values in the second and finally append all the zeros.  
However this would cause an addition O(n) space complexity which we can avoid as suggested by the problem's text.  
A better solution is to use **two pointers**: one which iterates through the array and the other that keeps track of misplaced zeros. Once the first pointer is in a different position with respect to the first than the corresponding values are swapped.

### Optimizations
There's not much to optimize to do here because **time complexity(n) = O(n)** and **space complexity(n) = O(1)**.
