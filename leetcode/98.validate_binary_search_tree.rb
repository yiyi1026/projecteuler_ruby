'''
Given a binary tree, determine if it is a valid binary search tree (BST).

Assume a BST is defined as follows:

The left subtree of a node contains only nodes with keys less than the node\'s key.
The right subtree of a node contains only nodes with keys greater than the node\'s key.
Both the left and right subtrees must also be binary search trees.
Example 1:
    2
   / \
  1   3
Binary tree [2,1,3], return true.
Example 2:
    1
   / \
  2   3
Binary tree [1,2,3], return false.
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
# @return {Boolean}
def is_valid_bst(root, min = nil, max = nil)
  return true if root.nil?
  return false if min && root.val <= min
  return false if max && root.val >= max
  return false unless is_valid_bst(root.left, min, root.val)
  return false unless is_valid_bst(root.right, root.val, max)
  true
end

@cur = nil
def is_valid_bst_2(root)
  return true if root.nil?
  # call left
  return false unless is_valid_bst_2(root.left)
  # cur
  if @cur == nil 
    @cur = root.val
  else
    return false if root.val <= @cur
    @cur = root.val
  end
  # call right
  return false unless is_valid_bst_2(root.right)
  # return true
  return true
end

tree = TreeNode.new(0)
tree.left = TreeNode.new(5)
tree.left.left = TreeNode.new(1)
tree.left.right = TreeNode.new(6)

p is_valid_bst(tree)
# p is_valid_bst_2(tree)

