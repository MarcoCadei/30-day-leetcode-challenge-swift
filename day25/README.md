# [Jump Game](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/531/week-4/3310/)

## Problem

Given an array of non-negative integers, you are initially positioned at the first index of the array.

Each element in the array represents your maximum jump length at that position.

Determine if you are able to reach the last index.
```
Example 1:

Input: [2,3,1,1,4]
Output: true
Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
```
```
Example 2:

Input: [3,2,1,0,4]
Output: false
Explanation: You will always arrive at index 3 no matter what. Its maximum
             jump length is 0, which makes it impossible to reach the last index.
```

## Solution

The first that comes to mind when facing this problem is to use a `greedy` approach and try to jump to the farthest position possible starting from the current one. However, this doesn't work as doing so you may skip cells that could make you do a big leap.  
In order to solve this problem is enough to iterate through the array, keep track of the farthest you can go from the current position `farthest = max(farthest, num[currentPosition] + currentPosition)` and keep going until:
- you reach the end of the array, in which case you return `true`;
- `currentPosition` goes after `farthest`, in which case you return `false`.  
This solution has **time complexity(n) = O(n)** and **space complexity(n) = O(n)**.

### Optimizations

It's hard to improve on this solution as **time complexity(n) = O(n)** and **space complexity(n) = O(n)** (which is required to store the input array, so if we don't count that then we have **space complexity(n) = O(1)**). However, it may be possible to skip some elements of the array to improve performance even more.
