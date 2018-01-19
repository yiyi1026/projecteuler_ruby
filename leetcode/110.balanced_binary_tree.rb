'''
Given a binary tree, determine if it is height-balanced.

For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
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
def depth(root)
    return 0 if root.nil?
    1 + [depth(root.left), depth(root.right)].max
end


def is_balanced(root)
    return true if root.nil?
    min, max = [depth(root.left), depth(root.right)].sort
    (max - min <= 1) && is_balanced(root.left) && is_balanced(root.right)
end

tree = TreeNode.new(1)
tree.left = TreeNode.new(2)
tree.right = TreeNode.new(2)
tree.left.left = TreeNode.new(3)
tree.left.left.left = TreeNode.new(4)
tree.right.right = TreeNode.new(3)
tree.right.right.right = TreeNode.new(4)
p is_balanced(tree)

p depth(tree)