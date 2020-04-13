# [Contiguous Array](https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3298/)

## Problem

Given a binary array, find the maximum length of a contiguous subarray with equal number of 0 and 1.

```
Example 1:

Input: [0,1]
Output: 2
Explanation: [0, 1] is the longest contiguous subarray with equal number of 0 and 1.
```
```
Example 2:

Input: [0,1,0]
Output: 2
Explanation: [0, 1] (or [1, 0]) is a longest contiguous subarray with equal number of 0 and 1.
```
**Note**: The length of the given binary array will not exceed 50,000.

## Solution

One solution to this problem would be to compute for each subarray the longest contiguous subarray with equal number of 0 and 1. However for an array of length `n` there are `O(n^2)` subarrays and to test each one would require `O(n)` so we would get an algorithm with **time complexity(n) = O(n^3)** .

### Optimizations

In order to optimize the proposed algorithm we can see that if we iterate through the array and draw a chart where the `y axis` represents the value obtained summing to a counter `-1` every time we encounter a `0` and `+1` every time we encounter a `1` and the `x axis` represents the indexes of the array then if two indexes `i` and `j` have the same value on the `y axis` it means that `array[i ..< j]` is a contiguous subarray with equal number of 0 and 1. The solution is therefore: `j - i + 1` where `i` and `j` are the furthest indexes which have the same value in the charted built as described above. Of course we can't draw a chart, but we can simulate the same approach using an `hash map` where the keys are `y values` and the values are the `indexes` of the array. This leads to an aglorithm with **time complexity(n) = O(n)** and **space complexity(n) = O(n)**.
