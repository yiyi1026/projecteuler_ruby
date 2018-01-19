'''
Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
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

# def min_depth(root)
#   return 0 if root.nil?
#   return 1 if (root.left.nil? && root.right.nil?)
#   solution = []
#   queue = [[root]]
#   until queue.empty?
#     arr = queue.shift
#     next if arr.empty?
#     sol_new = []
#     queue_new = []
#     arr.length.times do |_|
#       el = arr.shift
#       next if el.nil?
#       sol_new << el.val
#       queue_new << el.left if el.left
#       queue_new << el.right if el.right
#       queue << queue_new
#     end
#     solution << sol_new  unless sol_new.empty?
#   end
#   cnt = 0
#   solution.each_with_index do |el, idx|
#     return idx + 1 unless el.count == 2 ** idx
#   end
#   solution.length
# end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}

def min_depth(root)
  return 0 if root.nil?
  min, max = [min_depth(root.left), min_depth(root.right)].sort
  min == 0 ? ( max + 1) : (min + 1)
end

tree = TreeNode.new(1)
tree.left = TreeNode.new(2)
# tree.right = TreeNode.new(2)
# tree.left.left = TreeNode.new(3)
# tree.left.left.left = TreeNode.new(4)
# tree.right.right = TreeNode.new(3)
# tree.right.right.right = TreeNode.new(4)

p min_depth(tree)