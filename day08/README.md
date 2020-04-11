# [Middle of the Linked List](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/529/week-2/3290/)

## Problem

Given a non-empty, singly linked list with head node head, return a middle node of linked list.

If there are two middle nodes, return the second middle node.

```
Example 1:

Input: [1,2,3,4,5]
Output: Node 3 from this list (Serialization: [3,4,5])
The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
Note that we returned a ListNode object ans, such that:
ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
```

```
Example 2:

Input: [1,2,3,4,5,6]
Output: Node 4 from this list (Serialization: [4,5,6])
Since the list has two middle nodes with values 3 and 4, we return the second one.
```

**Note:**

The number of nodes in the given list will be between `1` and `100`.

## Solution

This problem is quite interesting since linked lists, in my experience at least, are rarely used in the making of iOS apps. For an array the solution would be straightforward because they have `random access` whilst  `linked lists` don't. With linked lists we can only go forward and backward one element at a time and since we are dealing with a `singly linked list` we can only go forward.  
A simple solution is to use two pointers: a `slow` one which moves element by element and a `fast` one which proceeds by two elements at a time. In this way by the time the `fast` pointer arrives to the end of the linked list, the `slow` one is exactly in the middle and if the list has an even number of elements the `slow` pointer will be on the "second" middle element.  
This algorithm has a **time complexity(n)  = O(n)** and a **space complexity(n) = O(n)**.

### Optimizations

I can't see any valid optimization since we are not using any memory and we iterate through the list just once. However, if you have any idea let me know! :)
