'''
Invert a binary tree.
     4
   /   \
  2     7
 / \   / \
1   3 6   9
to
     4
   /   \
  7     2
 / \   / \
9   6 3   1
'''

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  return root if root.nil?
  return root if root.left.nil? && root.right.nil?
  left = root.left
  right = root.right
  root.left = invert_tree(right)
  root.right = invert_tree(left)
  root
end

root = TreeNode.new(4)
root.left = TreeNode.new(2)
left = root.left
root.right = TreeNode.new(7)
right = root.right
left.left, left.right = TreeNode.new(1), TreeNode.new(3)
right.left, right.right = TreeNode.new(6), TreeNode.new(9)

p root
p invert_tree(root)