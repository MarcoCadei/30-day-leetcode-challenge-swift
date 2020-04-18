# [Number of Islands](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/530/week-3/3302/)

## Problem

Given a 2d grid map of '1's (land) and '0's (water), count the number of islands. An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

```
Example 1:

Input:
11110
11010
11000
00000

Output: 1
```
```
Example 2:

Input:
11000
11000
00100
00011

Output: 3
```

## Solution

To solve this problem we could think of a brute force algorithm were we look every possible submatrix and determine if that is an island, but then we should also check that there isn't a bigger island containing the current one. This would be hard to write and would have a huge time complexity.  
A better solution is to iterate through all the elements of the matrix and whenever we find a `1` increment a `counter` and explore the matrix, changing `1` with `*` so that we don't visit the same cell over and over again.  
If this sounds familiar is because we are not doing anything but a `DFS`.  
This algorithm has **time complexity(n) = O(n)** and **space complexity(n) = O(n)**.

### Optimizations

I can't think of any optimization for the solution proposed (also because we already have **time complexity(n) = O(n)** and **space complexity(n) = O(n)**), but if you have any idea let me know! :).
