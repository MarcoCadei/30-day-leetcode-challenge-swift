# [Minimum Path Sum](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/530/week-3/3303/)

## Problem

Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right which minimizes the sum of all numbers along its path.

Note: You can only move either down or right at any point in time.

```
Example:

Input:
[
  [1,3,1],
  [1,5,1],
  [4,2,1]
]
Output: 7
Explanation: Because the path 1→3→1→1→1 minimizes the sum.
```

## Solution

A possible way to solve this problem is to check all possible path using a simple recursive algorithm. This would work, but the time complexity is really high.

### Optimizations

One way to improve on the "brute force" recursive approach discussed above is to observe that we can only move `down` or `right` and we have to compute the minimum sum path to the bottom right corner.  
We can arrive at the destination either from the cell above or from the cell at its left. So the minimum sum path is the minimum sum path to arrive to the cell which has the minimum cost plus the cell at the right bottom corner. Exploiting this we can write a simple iterative algorithm that go through each cell of the matrix just once, obtaining a solution with **time complexity(n) = O(n)**.
