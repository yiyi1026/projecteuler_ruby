'''
24. Swap Nodes in Pairs
Medium

Share
Given a linked list, swap every two adjacent nodes and return its head.

Example:

Given 1->2->3->4, you should return the list as 2->1->4->3.
Note:

Your algorithm should use only constant extra space.
You may not modify the values in the list's nodes, only nodes itself may be changed.
'''

# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def swapPairs(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        dummy = ListNode(None)
        nodedummy = dummy
        nodehead = head

        if nodehead == None or nodehead.next == None:
          return nodehead
        
        while nodehead and nodehead.next:
          second = nodehead
          first = nodehead.next
          second.next = first.next
          nodedummy.next = first
          first.next = second

          nodehead = second.next
          nodedummy = nodedummy.next.next

        return dummy.next