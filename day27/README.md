# [Maximal Square](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/531/week-4/3312/)

## Problem

Given a 2D binary matrix filled with 0's and 1's, find the largest square containing only 1's and return its area.
```
Example:

Input: 

1 0 1 0 0
1 0 1 1 1
1 1 1 1 1
1 0 0 1 0

Output: 4
```

## Solution

Of course for this problem we have to immediately discard the option of a brute force approach as to test each subsquare the time complexity would be **O(n^4)**.  
Usually when dealing with matrices and repeated computation dynamic programming can come to the rescue and this is also the case. In fact we can easily build a matrix where `dp[i][j] = max length of the square having the bottom right corner in (i, j)` in this way:  
- `dp[i][j] = 0 if matrix[i][j] == '0'`
- `dp[i][j] = min(dp[i - 1][j - 1], dp[i - 1][j], dp[i][j - 1]) + 1 otherwise`  
This solution has **time complexity(n, m) = O(n * m)** and **space complexity(n, m) = O(n * m)**.

### Optimizations

As it often happens with dynamic programming we can observe that the solution uses only the current row and the previous one, therefore instead of having the full matrix `dp` we can just use the last two rows, hence reduing space complexity down to **O(min(n, m)**.
