# [First Unique Number](https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/531/week-4/3313/)

## Problem

You have a queue of integers, you need to retrieve the first unique integer in the queue.

Implement the FirstUnique class:

FirstUnique(int[] nums) Initializes the object with the numbers in the queue.
int showFirstUnique() returns the value of the first unique integer of the queue, and returns -1 if there is no such integer.
void add(int value) insert value to the queue.
 
```
Example 1:

Input: 
["FirstUnique","showFirstUnique","add","showFirstUnique","add","showFirstUnique","add","showFirstUnique"]
[[[2,3,5]],[],[5],[],[2],[],[3],[]]
Output: 
[null,2,null,2,null,3,null,-1]

Explanation: 
FirstUnique firstUnique = new FirstUnique([2,3,5]);
firstUnique.showFirstUnique(); // return 2
firstUnique.add(5);            // the queue is now [2,3,5,5]
firstUnique.showFirstUnique(); // return 2
firstUnique.add(2);            // the queue is now [2,3,5,5,2]
firstUnique.showFirstUnique(); // return 3
firstUnique.add(3);            // the queue is now [2,3,5,5,2,3]
firstUnique.showFirstUnique(); // return -1
```
```
Example 2:

Input: 
["FirstUnique","showFirstUnique","add","add","add","add","add","showFirstUnique"]
[[[7,7,7,7,7,7]],[],[7],[3],[3],[7],[17],[]]
Output: 
[null,-1,null,null,null,null,null,17]

Explanation: 
FirstUnique firstUnique = new FirstUnique([7,7,7,7,7,7]);
firstUnique.showFirstUnique(); // return -1
firstUnique.add(7);            // the queue is now [7,7,7,7,7,7,7]
firstUnique.add(3);            // the queue is now [7,7,7,7,7,7,7,3]
firstUnique.add(3);            // the queue is now [7,7,7,7,7,7,7,3,3]
firstUnique.add(7);            // the queue is now [7,7,7,7,7,7,7,3,3,7]
firstUnique.add(17);           // the queue is now [7,7,7,7,7,7,7,3,3,7,17]
firstUnique.showFirstUnique(); // return 17
```
```
Example 3:

Input: 
["FirstUnique","showFirstUnique","add","showFirstUnique"]
[[[809]],[],[809],[]]
Output: 
[null,809,null,-1]

Explanation: 
FirstUnique firstUnique = new FirstUnique([809]);
firstUnique.showFirstUnique(); // return 809
firstUnique.add(809);          // the queue is now [809,809]
firstUnique.showFirstUnique(); // return -1
```
 
**Constraints**:

- `1 <= nums.length <= 10^5`
- `1 <= nums[i] <= 10^8`
- `1 <= value <= 10^8`
- At most `50000` calls will be made to `showFirstUnique` and `add`.

## Solution

This is a really interesting problem, since it forces us to implement a `Linked List` which is not present in `Swift` by default. But let's not jump to conclusions.  
In order to solve this problem a simple idea is to keep track of the elements in a `list` and use a `dict` to keep a count of how many times a specific element appeared. This is nice and simple, but it doesn't scale well because time and space complexity depend on the numbers of elements added.

### Optimizations

One way to improve on the previous solution is to consider that elements cannot be deleted and that we would like to be able to retrieve the first unique element and andd a new one in `O(1)` time, so that our data structure scales really well.  
In order to do so we can use a `linked list` to store all the unique numbers and a `dictionary` which stores for each value the reference at the corresponding node in the `linked list`.  
Doing so allow us to:
- retrieve the first unique element by just returning the first element of the linked list, which has **time complexity(n) = O(1)**.  
- add an element by just checking a `dict` and eventually `adding` or `removing` from a linked list, which has **time complexity(n) = O(1)**.  
As for the space complexity that depends on the number of unique numbers, but I don't think we can do better than that. However, let me know if you have any idea! :)
