'''
 101. Symmetric Tree
Easy

Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

    1
   / \
  2   2
 / \ / \
3  4 4  3
But the following [1,2,2,null,3,null,3] is not:
    1
   / \
  2   2
   \   \
   3    3
Note:
Bonus points if you could solve it both recursively and iteratively.


'''

class TreeNode:
    def __init__(self, v):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    # private method to compare if tree p is symetric to tree q
    def mirror(self, p, q):
      if (not p) and (not q):
        return True
      elif p and q and p.val == q.val:
        return self.mirror(p.left, q.right) and self.mirror(p.right, q.left)
      else:
        return False
  
    def isSymmetric(self, root):
        """
        :type root: TreeNode
        :rtype: bool
        """
        if not root:
          return True
        elif root.left and root.right and (root.left.val == root.right.val):
          return self.mirror(root.left, root.right)
        elif (not root.left) and (not root.right):
          return True
        else:
          return False