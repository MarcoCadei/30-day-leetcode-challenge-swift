# [Binary Tree Maximum Path Sum](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/532/week-5/3314/)

## Problem

Given a non-empty binary tree, find the maximum path sum.

For this problem, a path is defined as any sequence of nodes from some starting node to any node in the tree along the parent-child connections. The path must contain at least one node and does not need to go through the root.

```
Example 1:

Input: [1,2,3]

       1
      / \
     2   3

Output: 6
```
```
Example 2:

Input: [-10,9,20,null,null,15,7]

   -10
   / \
  9  20
    /  \
   15   7

Output: 42
```

## Solution

This problem is relative to trees and as always when talking about trees a recursive solution can be really easy and concise to write. This is also the case.  
While in a `node` we can compute the maximum path just going down from `left` and maximum path going down from the `right`. Once we have these two values we can update the result as `max(result, left + right + node.val)`, whilst returning as value of the function the `max(left, right) + node.val`.  
Traversing the tree in this way we can compute the result traversing each node just once, hence **time complexity(n) = O(n)** and **space complexity(n) = O(1)**.

### Optimizations

Given **time complexity(n) = O(n)** and **space complexity(n) = O(1)** I don't how to improve on this since we have to look at each node of the tree in order to compute the solution. Let me know if you have any idea! :).
