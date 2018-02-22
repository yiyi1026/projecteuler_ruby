'''
Given a binary tree, return the preorder traversal of its nodes\' values.

For example:
Given binary tree [1,null,2,3],
   1
    \
     2
    /
   3
return [1,2,3].
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
# @return {Integer[]}

#recursive
def preorder_traversal(root)
  return [] if root.nil?
  [root.val] + preorder_traversal(root.left) + preorder_traversal(root.right)
end

#iterative
def preorder_traversal(root)
  stack = []
  traverse = []
  node = root
  until node.nil? && stack.empty?
    until node.nil?
      stack << node
      traverse << node.val
      node = node.left
    end

    unless stack.empty?
      node = stack.pop
      node = node.right
    end
  end
  traverse
end

tree = TreeNode.new(3)
tree.left = TreeNode.new(1)
# tree.right = TreeNode.new(3)
left = tree.left
# left.left = TreeNode.new(4)
left.right = TreeNode.new(2)
# right = tree.right
# right.left = TreeNode.new(6)
# right.right = TreeNode.new(7)
# tree = TreeNode.new(nil)
p preorder_traversal(tree)