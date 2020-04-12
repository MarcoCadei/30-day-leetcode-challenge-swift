# [Min Stack](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/529/week-2/3292/)

## Problem

Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

- push(x) -- Push element x onto stack.
- pop() -- Removes the element on top of the stack.
- top() -- Get the top element.
- getMin() -- Retrieve the minimum element in the stack.
 

**Example:**
```
MinStack minStack = new MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
minStack.getMin();   --> Returns -3.
minStack.pop();
minStack.top();      --> Returns 0.
minStack.getMin();   --> Returns -2.
```

## Solution

This problem is very interesting. At first it seems impossible to retrieve the minimum element in constant time, because we can update the minimum while pushing, but once we pop the current min, how do we know what is the next minimum?  
The solution is to use a little bit of space (however keeping it `O(n)`) and store in each element the min we have encountered so far. In this way, the minimum is always stored together with the top element.  
This solution as the required **time complexity(n) = O(1)** for each operation.

### Optimizations

It would be better to use a proper data structure for the nodes of the stack and maybe make it generic wrt the value type we are storing.  
