'''
Given a binary tree, return the inorder traversal of its nodes\' values.

For example:
Given binary tree [1,null,2,3],
   1
    \
     2
    /
   3
return [1,3,2].
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

# in-order traverse : left, parent, right

# irrative
def inorder_traversal(root)
  # queue = [root]
  # temp = []
  # traverse = []
  # until queue.empty? && temp.empty?
  #   if temp.empty?
  #     el = queue.pop
  #   else
  #     el = tem
  # end
end

# recursive
def inorder_traversal(root)
  return [] if root.nil?
  inorder_traversal(root.left) + [root.val] + inorder_traversal(root.right)
end

def inorder_traversal(root)
  stack = []
  traverse = []
  until stack.empty?
end

tree = TreeNode.new(1)
tree.left = TreeNode.new(2)
tree.right = TreeNode.new(3)
left = tree.left
right = tree.right
left.left = TreeNode.new(4)
left.right = TreeNode.new(5)
right.left = TreeNode.new(6)
right.right = TreeNode.new(7)

p inorder_traversal(tree)
