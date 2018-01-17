'''
Given two binary trees, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical and the nodes have the same value.


Example 1:

Input:     1         1
          / \       / \
         2   3     2   3

        [1,2,3],   [1,2,3]

Output: true
Example 2:

Input:     1         1
          /           \
         2             2

        [1,2],     [1,null,2]

Output: false
Example 3:

Input:     1         1
          / \       / \
         2   1     1   2

        [1,2,1],   [1,1,2]

Output: false
'''

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  return true if p.nil? && q.nil?
  return false if p.nil? || q.nil?
  return false unless p.val == q.val && is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
  true
end

p = TreeNode.new(1)
iter = p
iter.left = TreeNode.new(2)
iter.right = TreeNode.new(1)

q = TreeNode.new(1)
iter = q
iter.left = TreeNode.new(1)
iter.right = TreeNode.new(2)

p is_same_tree(p,q)
