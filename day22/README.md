# [Subarray Sum Equals K](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/530/week-3/3307/)

## Problem

Given an array of integers and an integer k, you need to find the total number of continuous subarrays whose sum equals to k.
```
Example 1:

Input:nums = [1,1,1], k = 2
Output: 2
```
**Note**:

1. The length of the array is in range [1, 20,000].
2. The range of numbers in the array is [-1000, 1000] and the range of the integer k is [-1e7, 1e7].

## Solution

The brute force solution to this problem is to try to sum every continous subarray and check if the sum equals `k`. Of course this would work but has **time complexity(n) = O(n^3)**, which is huge.  
One way to improve on this result is to build the current sum as we go through the array, in this way we have an algorithm with **time complexity(n) = O(n^2)** which is still high, but **space complexity(n) = O(n)**.

### Optimizations

Even though we already optimized the brute force approach, the **time complexity(n) = O(n^2)** might be too much in some cases. It would be better if we could balance time and space by obtaining a solution which is linear for both.  
One way to do that is by using a dictionary. Iterate through the array and sum each element as we go, if the `currentSum - k` was already in the dictionary it means that there is a subarray contained in `array[0, currentIndex]` which the sum equals `k` so we increment the result by `1`, update the dictionary with key `currentSum` and increment value by `1`.  
This solution has **time complexity(n) = O(n)** and **space complexity(n) = O(n)**.
