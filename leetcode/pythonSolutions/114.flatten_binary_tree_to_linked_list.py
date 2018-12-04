'''
114. Flatten Binary Tree to Linked List
Medium

Given a binary tree, flatten it to a linked list in-place.
For example, given the following tree:

    1
   / \
  2   5
 / \   \
3   4   6
The flattened tree should look like:

1
 \
  2
   \
    3
     \
      4
       \
        5
         \
          6
'''

# Definition for a binary tree node.
class TreeNode(object):
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution(object):
    def flatten(self, root):
        """
        :type root: TreeNode
        :rtype: void Do not return anything, modify root in-place instead.
        """
        if not root:
            return
        oldRight = root.right
        root.right = root.left        
        self.flatten(root.left) 
        root.left = None
        while root.right:
            root = root.right
        root.right = oldRight
        self.flatten(oldRight)

def prt(node):
  if node:
    print(node.val)
    prt(node.left)
    prt(node.right)

node1 = TreeNode(1)
node2 = TreeNode(2)
node5 = TreeNode(5)
node1.left = node2
node1.right = node5


sol = Solution()
sol.flatten(node1)
prt(node1)