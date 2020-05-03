# [Check If a String Is a Valid Sequence from Root to Leaves Path in a Binary Tree](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/532/week-5/3315/)

## Problem

Given a binary tree where each path going from the root to any leaf form a valid sequence, check if a given string is a valid sequence in such binary tree. 

We get the given string from the concatenation of an array of integers arr and the concatenation of all values of the nodes along a path results in a sequence in the given binary tree.

 
```
Example 1:

Input: root = [0,1,0,0,1,0,null,null,1,0,0], arr = [0,1,0,1]
Output: true
Explanation: 
The path 0 -> 1 -> 0 -> 1 is a valid sequence (green color in the figure). 
Other valid sequences are: 
0 -> 1 -> 1 -> 0 
0 -> 0 -> 0
```
```
Example 2:

Input: root = [0,1,0,0,1,0,null,null,1,0,0], arr = [0,0,1]
Output: false 
Explanation: The path 0 -> 0 -> 1 does not exist, therefore it is not even a sequence.
```
```
Example 3:

Input: root = [0,1,0,0,1,0,null,null,1,0,0], arr = [0,1,1]
Output: false
Explanation: The path 0 -> 1 -> 1 is a sequence, but it is not a valid sequence.
```

**Constraints**:

- `1 <= arr.length <= 5000`
- `0 <= arr[i] <= 9`
Each node's value is between `[0 - 9]`.

## Solution

This problem is relative to trees and as always when talking about trees a recursive solution can be really easy and concise to write. This is also the case.  
In fact to solve this problem is enough to perform a `DFS` adding an additional parameter: the current index of the array we are examining.

- if `currentNode.val != arr[index]` we return false
- if `index == arr.count - 1` we return `node.isLeaf`
- otherwise return whether the condition is satisfied going down right `or` left

This solution has **time complexity(n) = O(n)** and **space complexity(n) = O(n)** (the space complexity accounts the memory needed to store the input).  

### Optimizations

Given **time complexity(n) = O(n)** and **space complexity(n) = O(n)** I don't how to improve on this since in the worst case we have to look at each node of the tree in order to compute the solution. Let me know if you have any idea! :).
