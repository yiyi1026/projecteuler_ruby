'''
21. Merge Two Sorted Lists
Easy
1579
218


Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

Example:

Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4
'''

# Definition for singly-linked list.
class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution:
    def mergeTwoLists(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """
        result = ListNode.new(None)
        noderesult = result
        nodel1 = l1
        nodel2 = l2

        while nodel1 and nodel2:
          if nodel1.val >= nodel2.val:
            noderesult.next = nodel2
            nodel2 = nodel2.next
          else:
            noderesult.next = nodel1
            nodel1 = nodel1.next
          noderesult = noderesult.next
        if nodel1:
          noderesult.next = nodel1
        else:
          noderesult.next = nodel2
        return result.next

def printll(l):
  while l :
    print(l.val)
    l = l.next

# l1: 1 -> 3 -> 5
# l2: 1 -> 2 -> 4    
l1= ListNode(1)
l2= ListNode(2)
node2 = ListNode(3)
node3 = ListNode(4)
node4 = ListNode(5)
node5 = ListNode(6)
l1.next = node2
l2.next = node3
node2.next = node4
node3.next = node5


sol = Solution()
printll(sol.mergeTwoLists(l1,l2))
        