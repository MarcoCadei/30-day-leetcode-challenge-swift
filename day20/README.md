# [Construct Binary Search Tree from Preorder Traversal](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/530/week-3/3305/)

## Problem
Return the root node of a binary search tree that matches the given preorder traversal.

_(Recall that a binary search tree is a binary tree where for every node, any descendant of node.left has a value < node.val, and any descendant of node.right has a value > node.val.  Also recall that a preorder traversal displays the value of the node first, then traverses node.left, then traverses node.right.)_

```
Example 1:

Input: [8,5,1,7,10,12]
Output: [8,5,10,1,7,null,12]
```

**Note**: 

`1 <= preorder.length <= 100`
The values of preorder are distinct.

## Solution

Usually when trees are involved recursion can provide easy solutions and this is the case also for this problem.  
Given the input array and the fact that we are using `preorder traversal` we can observe that the first element is the root, all the elements in the array from the second to the element which is bigger than the first (excluded) are part of the left tree and the remaining elements form the right tree. Applying this observation recursively we obtain the solution.  
This algorithm has **time complexity(n) = O(n)** and **space complexity(n) = O(n)**.

### Optimizations

I can't think of any optimization for the solution proposed (also because we already have **time complexity(n) = O(n)** and **space complexity(n) = O(1)**), but if you have any idea let me know! :).
