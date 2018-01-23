'''
Given a binary tree, return all root-to-leaf paths.

For example, given the following binary tree:

   1
 /   \
2     3
 \
  5
All root-to-leaf paths are:

["1->2->5", "1->3"]
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
# @return {String[]}
def all_paths(root, currentpath = [], paths = [])
  return [] if root.nil?
  new_path = currentpath + [root.val.to_s]
  paths << new_path if root.left.nil? && root.right.nil?

  all_paths(root.left, new_path, paths)
  all_paths(root.right, new_path, paths)
  
  paths
end

def binary_tree_paths(root)
  all_paths(root).map{|path|path.join("->")}
end

tree = TreeNode.new(1)
tree.right = TreeNode.new(3)
tree.left = TreeNode.new(2)
tree.right.left = TreeNode.new(5)

# p all_paths(tree)
p binary_tree_paths(tree)