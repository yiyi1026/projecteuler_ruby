'''
Given a binary tree, flatten it to a linked list in-place.

For example,
Given

         1
        / \
       2   5
      / \   \
     3   4   6
The flattened tree should look like:
   1
    \
     2
      \
       3
        \
         4
          \
           5
            \
             6
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
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
  return root if root.nil?
  dummy = root
  right = dummy.right
  dummy.right = flatten(dummy.left)
  dummy.left = nil
  dummy = dummy.right until dummy.right.nil?
  dummy.right = flatten(right)
  root
end

tree = TreeNode.new(1)
tree.left = TreeNode.new(2)
tree.right = TreeNode.new(5)
left = tree.left
right = tree.right
left.left = TreeNode.new(3)
left.right = TreeNode.new(4)
right.right = TreeNode.new(6)

p flatten(tree)