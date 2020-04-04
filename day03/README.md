# [Maximum Subarray](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3285/)

## Problem

Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

```
Example:

Input: [-2,1,-3,4,-1,2,1,-5,4],
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.
```

## Solution

The first solution that comes to mind in this case is to simply loop through all the possible subarrays of the given array.  
This of course would work, but has a **time complexity(n) = O(n^2)**.  
Another solution would be to sort the array in descending order and sum all the first `k` positive numbers (or take the first negative number if there aren't any positive numbers). This solution would have a **time complexity(n) = O(n*lgn)**.

### Optimizations
On way to improve on the current solution is to notice that while looping though the array we could keep track of the current maximum sum. In case we find a negative value we simply reset the temporary variable used to 0, since adding a negative value can't bring any benefit to the total sum.
