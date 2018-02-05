


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
def sum_of_left_leaves(root, left = false)    
  if root.nil?
    return 0
  elsif root.left.nil? && root.right.nil?
    return left ? root.val : 0
  else
    return sum_of_left_leaves(root.left, true) + sum_of_left_leaves(root.right, false)
  end
end