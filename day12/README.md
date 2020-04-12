# [Last Stone Weight](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/529/week-2/3297/)

## Problem

We have a collection of stones, each stone has a positive integer weight.

Each turn, we choose the two heaviest stones and smash them together.  Suppose the stones have weights x and y with x <= y.  The result of this smash is:

- If `x == y`, both stones are totally destroyed;
- If `x != y`, the stone of weight x is totally destroyed, and the stone of weight y has new weight y-x.
At the end, there is at most 1 stone left.  Return the weight of this stone (or 0 if there are no stones left.)

```
Example 1:

Input: [2,7,4,1,8,1]
Output: 1
Explanation: 
We combine 7 and 8 to get 1 so the array converts to [2,4,1,1,1] then,
we combine 2 and 4 to get 2 so the array converts to [2,1,1,1] then,
we combine 2 and 1 to get 1 so the array converts to [1,1,1] then,
we combine 1 and 1 to get 0 so the array converts to [1] then that's the value of last stone.
```

**Note:**

1. `1 <= stones.length <= 30`
2. `1 <= stones[i] <= 1000`

## Solution

This is a really interesting problem.  
At a first glance it would seem reasonable to simulate the process using an array. However, this would bring us to an algorithm with a really big time complexity because we have to keep searching for the two biggest element, update the array and then repeat.  

### Optimizations

In order to optimize the proposed solution we can observe that given we are always looking for the two **biggest** element in the array, we can use a more efficient structure. A `priority queue` does exactly what we need in this situation because it allows us to retrieve the max element in `O(1)` and insert new element with `O(lgn)`.
