# [Valid Parenthesis String](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/530/week-3/3301/)

## Problem

Given a string containing only three types of characters: '(', ')' and '*', write a function to check whether this string is valid. We define the validity of a string by these rules:

1. Any left parenthesis '(' must have a corresponding right parenthesis ')'.
2. Any right parenthesis ')' must have a corresponding left parenthesis '('.
3. Left parenthesis '(' must go before the corresponding right parenthesis ')'.
4. '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string.
5. An empty string is also valid.

```
Example 1:

Input: "()"
Output: True
```
```
Example 2:

Input: "(*)"
Output: True
```
```
Example 3:

Input: "(*))"
Output: True
```
**Note**:

The string size will be in the range [1, 100].

## Solution

Let's consider first the same problem but without the problematic `*` character. In that case the solution would be straightforward: go from left to right and keep a counter, which is incremented when "(" is found and decremented when ")" is found. If at any moment the counter is less than 0 return `false`, if you went through the string and arrived to the end return `counter == 0`.  
We can apply a similar approach to solve this enhanced version of the problem. Going from left to right increment a counter `leftBalance` if the character is `(` or `*` and decrement it otherwise. Do the same thing going from right to left and considering the characters `)` and `*`. While traversing the string if any of the two counters becomes less than 0 than return `false` otherwise if you go throught to the entire string return `true`.  
This algorithm works because the `*` character can become `(`, `)` or an empty string. Therefore, as long as the balance is greater than `0` in both directions we can build a valid parenthesis string.  
This algorithm has **time complexity(n) = O(n)** and **space complexity(n) = O(1)**.


### Optimizations

I can't think of any optimization for the solution proposed (also because we already have **time complexity(n) = O(n)** and **space complexity(n) = O(1)**), but if you have any idea let me know! :).
