'''
Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
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
# @return {Integer}
def max_depth(root)
  return 0 if root.nil?
  1 + [max_depth(root.left), max_depth(root.right)].max  
end

left = TreeNode.new(2)
left.left = TreeNode.new(3)
left.right = TreeNode.new(4)
left.right.left = TreeNode.new(3)

right = TreeNode.new(2)
right.left = TreeNode.new(4)
right.right = TreeNode.new(3)

root = TreeNode.new(1)
root.left = left
root.right = right

p max_depth(root)