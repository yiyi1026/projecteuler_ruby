'''

Given a binary tree, return the postorder traversal of its nodes\' values.

For example:
Given binary tree [1,null,2,3],

   1
    \
     2
    /
   3
 

return [3,2,1].
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
def postorder_traversal(root)
  return [] if root.nil? || (root.left.nil? && root.right.nil?)
  postorder_traversal(root.left) + postorder_traversal(root.right) + [root.val]
end