# [Product of Array Except Self](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/530/week-3/3300/)

## Problem

Given an array nums of n integers where n > 1,  return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

```
Example:

Input:  [1,2,3,4]
Output: [24,12,8,6]
```
**Constraint**: It's guaranteed that the product of the elements of any prefix or suffix of the array (including the whole array) fits in a 32 bit integer.

**Note**: Please solve it without division and in `O(n)`.

## Solution

A brute force approach to solve this problem is to iterate through each element of the array and for each one compute the corresponding result multiplying all other elements. The problem is that the time complexity would be `O(n^2)`. A faster way to solve this would be to compute the product of all elements and then for each element divide the product for itself in order to compute the corresponding solution. This solution has `O(n)` time complexity but it is not allowed by the problem.  
It is possible to observe that when computing the result for the element at index `i` we have to multiply all the elements before and all the elements after it, but if we already knew these quantities we would have a solution with time complexity `O(n)`.  We can compute these quantities in advance and store them in two arrays, so that in array `A` at index `i` we have the cumulative products from `0 ... i` and in array `B` at index `j` the cumulative product from `j ... n`. Because the first element of the result is always `B[0]` we insert in position `0` of `A` the number `1` and also because the last element of the result is always `A[n - 1]` we append in `B` the number `1`. With the arrays `A` and `B` computed as described, the result is simply `A[i] * B[i] for all i 0 ..< n` and it is computed with **time complexity(n) = O(n)**.

### Optimizations

Instead of using the two arrays `A` and `B` and a third one for the result we could simply compute `B`, use a variable to store the element corresponding to `A[i]` as we progress through `nums` and store in `B[i]` the current result. At the end the result is stored in `B` and if we don't consider the space necessary for the output array in the space complexity, then we effectively reduced space complexity to `O(1)`.
