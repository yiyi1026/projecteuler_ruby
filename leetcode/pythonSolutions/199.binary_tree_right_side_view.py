'''
199. Binary Tree Right Side View
Medium

Given a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.

Example:

Input: [1,2,3,null,5,null,4]
Output: [1, 3, 4]
Explanation:

   1            <---
 /   \
2     3         <---
 \     \
  5     4       <---
'''


# Definition for a binary tree node.
class TreeNode(object):
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution(object):
    def rightSideView(self, root):
        """
        :type root: TreeNode
        :rtype: List[int]
        """
        store = []
        if root:
          source = [root]
          stack = []
          while source:
            stack = []
            while source:
              node = source.pop(0)
              if node.left:
                stack.append(node.left)
              if node.right:
                stack.append(node.right)
            if stack:
              store.append(stack[-1].val)
            else:
              break
            source = stack
        return store
sol = Solution()

node1 = TreeNode(1)
node2 = TreeNode(2)
node3 = TreeNode(3)
node4 = TreeNode(4)
node5 = TreeNode(5)
node1.left = node2
node2.right = node5
node1.right = node3
node3.right = node4

print(sol.rightSideView(node1))