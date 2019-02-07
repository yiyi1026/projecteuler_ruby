'''
143. Reorder List
Medium

Share
Given a singly linked list L: L0→L1→…→Ln-1→Ln,
reorder it to: L0→Ln→L1→Ln-1→L2→Ln-2→…

You may not modify the values in the list's nodes, only nodes itself may be changed.

Example 1:

Given 1->2->3->4, reorder it to 1->4->2->3.
Example 2:

Given 1->2->3->4->5, reorder it to 1->5->2->4->3.
'''

# Definition for singly-linked list.
class ListNode(object):
    def __init__(self, x):
        self.val = x
#         self.next = None

class Solution(object):
    def reorderList(self, head):
        """
        :type head: ListNode
        :rtype: void Do not return anything, modify head in-place instead.
        """
        if head is None:
          return head
        arr = []
        source = head
        
        queueFlag = True
        
        while source:
          tail = source.next
          source.next = None
          arr.append(source)
          source = tail
          
        newNode = arr[0]
        length = len(arr)
        mid = (length-1)//2
        i = 1
        while i <= mid:
          newNode.next = arr[-i]
          newNode = newNode.next
          newNode.next = arr[i]
          newNode = newNode.next
          i += 1
        if length % 2 == 0:
          newNode.next = arr[i]
          
sol = Solution()
node1 = ListNode(1)
node2 = ListNode(2)
node3 = ListNode(3)
node4 = ListNode(4)
node5 = ListNode(5)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

sol.reorderList(node1)

while node1:
  print(node1.val)
  node1 = node1.next