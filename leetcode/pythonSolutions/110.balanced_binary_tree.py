'''
110. Balanced Binary Tree
Easy

Given a binary tree, determine if it is height-balanced.

For this problem, a height-balanced binary tree is defined as:

a binary tree in which the depth of the two subtrees of every node never differ by more than 1.

Example 1:

Given the following tree [3,9,20,null,null,15,7]:

    3
   / \
  9  20
    /  \
   15   7
Return true.

Example 2:

Given the following tree [1,2,2,3,3,null,null,4,4]:

       1
      / \
     2   2
    / \
   3   3
  / \
 4   4
Return false.
'''

class TreeNode:
  def __init__(self, v):
    self.val = v
    self.left = None
    self.right = None

class Solution:
  
    def depth(self, root):
      if not root:
        return 0
      else:
        return 1 + max([self.depth(root.left), self.depth(root.right)])
      
    def isBalanced(self, root):
        """
        :type root: TreeNode
        :rtype: bool
        """
        if root:
          return self.isBalanced(root.left) and self.isBalanced(root.right) and (abs(self.depth(root.left) - self.depth(root.right)) <= 1)
        else:
          return True

node1 = TreeNode(1)
node2= TreeNode(2)  
node3= TreeNode(3)  
node4= TreeNode(4)  
node5= TreeNode(5)  
node6= TreeNode(6)  
node7= TreeNode(7)  
node8= TreeNode(8)  
node1.left = node2
node1.right = node3
node2.left = node4
node2.right = node5
node5.right = node6
node3.left = node7
node3.right = node8

tree = node1

sol = Solution()
print(sol.isBalanced(tree))