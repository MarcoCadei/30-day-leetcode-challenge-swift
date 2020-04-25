# [LRU Cache](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/531/week-4/3309/)

## Problem

Design and implement a data structure for Least Recently Used (LRU) cache. It should support the following operations: get and put.

get(key) - Get the value (will always be positive) of the key if the key exists in the cache, otherwise return -1.
put(key, value) - Set or insert the value if the key is not already present. When the cache reached its capacity, it should invalidate the least recently used item before inserting a new item.

The cache is initialized with a positive capacity.

**Follow up**:
Could you do both operations in O(1) time complexity?

```
Example:

LRUCache cache = new LRUCache( 2 /* capacity */ );

cache.put(1, 1);
cache.put(2, 2);
cache.get(1);       // returns 1
cache.put(3, 3);    // evicts key 2
cache.get(2);       // returns -1 (not found)
cache.put(4, 4);    // evicts key 1
cache.get(1);       // returns -1 (not found)
cache.get(3);       // returns 3
cache.get(4);       // returns 4
```

## Solution

This is an interesting problem because given the constraint that all operation should be excecuted in `O(1)` time we don't know which data structure to pick. The problem is that we would like a `dictionary` for `O(1)` performances but we would also want the ordering of `array` or `list`. So why don't use both?  
We could use a `dictionary` for the `key-value` mapping and a `list` to keep the ordering. Why a list you may ask, since an `array` is also ordered. Well, the answer is given by the fact that we need to be able to both delete elements and move them to the head (so that least recently used go to the bottom) in `O(1)` of time and a `list` allows to do that whilst an `array` requires `O(n)` time.  
Time complexity for all operation is `O(1)` as required, while space complexity is `O(capacity)`.

### Optimizations

It's hard to improve on `O(1)` but as for space complexity even if we can't improve it asymptotically, it may be possible to reduce the space currently used.
