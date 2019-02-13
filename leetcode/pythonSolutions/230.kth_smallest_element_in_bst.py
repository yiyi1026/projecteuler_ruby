# Definition for a binary tree node.
class TreeNode(object):
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution(object):
    def smallest(self, root):
      if root is None:
        return None
      if root.left:
        return self.smallest(root.left)
      return root.val
    
    def countNodes(self, root):
      if root is None:
        return 0
      i = 1
      queue = [root]
      currentDepth = []
      while queue:
        node = queue.pop(0)
        if node.left:
          currentDepth.append(node.left)
          i += 1
        if node.right:
          currentDepth.append(node.right)
          i += 1
        if not queue:
          queue = currentDepth
          currentDepth = []
      return i
  
    def kthSmallest(self, root, k):
        """
        :type root: TreeNode
        :type k: int
        :rtype: int
        """
        if k == 1:
          return self.smallest(root)
        leftCount = self.countNodes(root.left)
        if leftCount == k-1:
          return root.val
        elif leftCount > k-1:
          return self.kthSmallest(root.left, k)
        return self.kthSmallest(root.right, k-1-leftCount)
        
sol = Solution()
node1 = TreeNode(1)
node2 = TreeNode(2)
node3 = TreeNode(3)
node4 = TreeNode(4)
node5 = TreeNode(5)
node6 = TreeNode(6)
node5.left = node3
node5.right = node6
node3.left = node2
node3.right = node4
node2.left = node1

node = (sol.kthSmallest(node5,3))
print(node.val)
# print(sol.countNodes(node3))