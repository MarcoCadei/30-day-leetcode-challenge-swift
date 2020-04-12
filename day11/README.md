# [Diameter of Binary Tree](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/529/week-2/3293/)

## Problem

Given a binary tree, you need to compute the length of the diameter of the tree. The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

```
Example:
Given a binary tree 

          1
         / \
        2   3
       / \     
      4   5    
```

Return 3, which is the length of the path [4,2,1,3] or [5,2,1,3].

**Note:** The length of path between two nodes is represented by the number of edges between them.

## Solution

This is quite an interesting problem. Observing the given example we can come up with a recursive formula to solve the problem:  
`f(n) = max(f(n.left), f(n.right), height(n.left) + height(n.right)`  
We can implement this easily just by using a recursive function to compute the height of the tree starting in the given node. This algorithm has a **time complexity(n) = O(n^2)**.

### Optimizations

An optimization can be made observing that while computing the height for a `node` we also know the answer to the problem for the given node. So just by adding a variable that we update while computing the height we are able to go through the tree just once, hence obtaining a **time complexity(n) = O(n)**.
