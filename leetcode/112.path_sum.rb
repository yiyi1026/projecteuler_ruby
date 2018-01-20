'''
Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.

For example:
Given the below binary tree and sum = 22,
              5
             / \
            4   8
           /   / \
          11  13  4
         /  \      \
        7    2      1
return true, as there exist a root-to-leaf path 5->4->11->2 which sum is 22.
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
# @param {Integer} sum
# @return {Boolean}

def path_sum(root)
  return [] if root.nil?
  return [root.val] unless root.left || root.right
  (path_sum(root.left) + path_sum(root.right)).map{|el|el+root.val}
end

def has_path_sum(root, sum)
  path_sum(root).include?(sum)
end

tree = TreeNode.new(1)
tree.left = TreeNode.new(2)
tree.right = TreeNode.new(7)
tree.left.left = TreeNode.new(3)
tree.left.left.left = TreeNode.new(4)
# tree.right.right = TreeNode.new(3)
# tree.right.right.right = TreeNode.new(4)

p path_sum(tree)
