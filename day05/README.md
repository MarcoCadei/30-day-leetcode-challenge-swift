# [Best Time to Buy and Sell Stock II](https://leetcode.com/explore/other/card/30-day-leetcoding-challenge/528/week-1/3287/)

## Problem

Say you have an array for which the ith element is the price of a given stock on day i.

Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).

**Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).**

```
Example 1:

Input: [7,1,5,3,6,4]
Output: 7
Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
             Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
```
```
Example 2:

Input: [1,2,3,4,5]
Output: 4
Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
             Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are
             engaging multiple transactions at the same time. You must sell before buying again.
```
```
Example 3:

Input: [7,6,4,3,1]
Output: 0
Explanation: In this case, no transaction is done, i.e. max profit = 0.
```

## Solution

This problem is a slight variation of the classic problem which asks you, given the prices of a stock, to determine the maximum profit you can make by buying and selling just once.  
In this case we have more freedom since we can buy and sell an arbitrary number of times, however there's a constraint since we can't have multiple transactions ongoing at the same time.  
A brute force approach would be to check all the possible non-overlapping subarrays and consider as buy price the first element of the array and as sell price the last element of it. However, we can do much better with simpler code :smile:.  
It is enough to recognize that every time stock price value increases we have to sell immediately. It is in fact counterproductive to sell only when the difference between the current price and the min price so far is maximum because we would risk to burn some profits if there are some valleys and peaks between them.

### Optimizations
There's not much to optimize here since **time complexity(n) = O(n)** and **space complexity(n) = O(n)** (if we consider the input array in the space complexity).
