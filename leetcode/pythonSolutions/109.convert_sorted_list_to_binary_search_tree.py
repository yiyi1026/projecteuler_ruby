'''
109. Convert Sorted List to Binary Search Tree
Medium

Given a singly linked list where elements are sorted in ascending order, convert it to a height balanced BST.

For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.

Example:

Given the sorted linked list: [-10,-3,0,5,9],

One possible answer is: [0,-3,9,-10,null,5], which represents the following height balanced BST:

      0
     / \
   -3   9
   /   /
 -10  5
'''
# Definition for singly-linked list.
class ListNode(object):
    def __init__(self, x):
        self.val = x
        self.next = None

# Definition for a binary tree node.
class TreeNode(object):
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution(object):
  
    def getNodeByIndex(self, head, index):
      if index >= self.getLength(head):
        return None
      
      i = 0
      source = head
      while source:
        if i == index:
          return source
        i += 1
        source = source.next
      return None
  
    def getLength(self, head):
      i = 0
      source = head
      while source:
        i += 1
        source = source.next
      return i
  
    def sortedListToBST(self, head):
        """
        :type head: ListNode
        :rtype: TreeNode
        """
        if head is None:
           return head
        if head.next is None:
          return TreeNode(head.val)
      
        length = self.getLength(head)
        mid = length // 2
        rootNode = self.getNodeByIndex(head, mid)
        leftLastNode = self.getNodeByIndex(head, mid-1)
        leftLastNode.next = None
        root = TreeNode(rootNode.val)
        rightNode = rootNode.next
        root.right = self.sortedListToBST(rightNode)
        root.left = self.sortedListToBST(head)
        return root