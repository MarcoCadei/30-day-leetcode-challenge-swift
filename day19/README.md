# [Search in Rotated Sorted Array](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/530/week-3/3304/)

## Problem

Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

(i.e., `[0,1,2,4,5,6,7]` might become `[`4,5,6,7,0,1,2]`).

You are given a target value to search. If found in the array return its index, otherwise return -1.

You may assume no duplicate exists in the array.

Your algorithm's runtime complexity must be in the order of O(log n).

```
Example 1:

Input: nums = [4,5,6,7,0,1,2], target = 0
Output: 4
```
```
Example 2:

Input: nums = [4,5,6,7,0,1,2], target = 3
Output: -1
```

## Solution

In this case the text of the problem gives us a very big hint. In fact the text states that the solution should have a time complexity of `T(n) = O(lgn)`.  
We have to perform a search in `T(n) = O(lgn)`, so the binary search bell rings immediately. However, normally in binary search the array is sorted, instead in this case we have to account for the rotation.  
Performing a single rotation on a sorted array gives us an array with two sorted subarrays, so we can still apply binary search but we have to slightly tweak the algorithm.  
The `middle` can be on subarray `A` or `B`, both of which are sorted:
 - if `nums[middle] == target` stop
 - if `middle` is on subarray `A` (the one which is on the left and therefore has the biggest elements) then we check if the target is on that subarray, in which case we set `right = middle -1`, otherwise `left = middle + 1`
 - if `middle` is on subarray `B` (the one which is on the right) then we check if the target is on that subarray, in which case we set `left = middle + 1` else `right = middle - 1`

### Optimizations

I can't think of any optimization for the solution proposed (also because we already have **time complexity(n) = O(lgn)** and **space complexity(n) = O(1)**), but if you have any idea let me know! :).
