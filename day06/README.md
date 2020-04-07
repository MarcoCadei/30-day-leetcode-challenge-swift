# [Group Anagrams](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3288/)

## Problem

Given an array of strings, group anagrams together.

```
Example:

Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
Output:
[
  ["ate","eat","tea"],
  ["nat","tan"],
  ["bat"]
]
```

**Note:**

All inputs will be in lowercase.
The order of your output does not matter.

## Solution

This problem can be solved using a dictionary: the key will be the sorted anagram we are analyzing, the values are strings of the input whose sorted version matches the key.  
Because dictionaries have a **O(1)** read-write access and sorting requires **T(n) = O(n*lgn)** if we call `n` the length of the input array and `k` the length of its elements, the proposed algorithm has a **time complexity(n, k) = O(n*klgk)** and **space complexity(n, k) = O(n*k)**.

### Optimizations

We can observe that if we make an assumption regarding the input, such as "input strings contain only letters from the latin alphabet", then we can improve on the time complexity of the proposed algorithm by avoiding sorting. In fact we can use an array of 26 elements, all initialized to 0, and for each letter of the string we are analyzing we increase the corresponding bucket in the array by 1. This will be our new key, which has been calculated in **T(k) = O(k)** while previously to compute the key we required **T(k) = O(k*lgk)**. Therefore, the new algorithm has **time complexity(n, k) = O(n*kl)** and **space complexity(n, k) = O(n*k)**.
