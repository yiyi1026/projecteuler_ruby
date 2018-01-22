'''
Given a binary tree and a sum, find all root-to-leaf paths where each path\'s sum equals the given sum.

For example:
Given the below binary tree and sum = 22,
              5
             / \
            4   8
           /   / \
          11  13  4
         /  \    / \
        7    2  5   1
return
[
   [5,4,11,2],
   [5,8,4,5]
]
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
# @return {Integer[][]}

# def path_sum2(root, sum, current_sum = 0, p=[])
#   return if root.nil?
#   v = root.val 
#   current_sum += v
#   p += [v]
  
#   unless root.left || root.right
#     @ret << p if sum == current_sum
#     return
#   end
#   path_sum2(root.left, sum, current_sum, p)
#   path_sum2(root.right, sum, current_sum, p)
# end

# def path_sum(root, sum)
#   @ret = []
#   path_sum2(root, sum)
#   @ret
# end

def all_paths(root, current_sum = [], ret = [])
  return [] if root.nil?
  new_sum = current_sum + [root.val]
  ret << new_sum if root.left.nil? && root.right.nil?
  all_paths(root.left, new_sum, ret)
  all_paths(root.right, new_sum, ret)
  ret
end

def path_sum(root, sum)
  all_paths = all_paths(root)
  all_paths.select{|sub|sub.reduce(0,:+) == sum}
end






tree = TreeNode.new(2)
tree.left = TreeNode.new(4)
tree.right = TreeNode.new(3)
tree.left.left = TreeNode.new(11)
tree.left.left.left = TreeNode.new(7)
tree.left.left.right = TreeNode.new(2)
p all_paths(tree)

# p path_sum(tree, -5)
# p @ret