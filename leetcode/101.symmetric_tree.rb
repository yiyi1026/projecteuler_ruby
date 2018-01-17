'''

Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

    1
   / \
  2   2
 / \ / \
3  4 4  3
But the following [1,2,2,null,3,null,3] is not:
    1
   / \
  2   2
   \   \
   3    3
Note:
Bonus points if you could solve it both recursively and iteratively.
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
def mirror(left, right)
  return true if left.nil? && right.nil?
  return false unless left && right && (left.val == right.val)
  mirror(left.right, right.left) && mirror(left.left, right.right)

end


def is_symmetric(root)
  return true if root.nil?
  return false unless mirror(root.left, root.right)
  true
end

left = TreeNode.new(2)
left.left = TreeNode.new(3)
left.right = TreeNode.new(4)

right = TreeNode.new(2)
right.left = TreeNode.new(4)
right.right = TreeNode.new(3)

root = TreeNode.new(1)
root.left = left
root.right = right

p is_symmetric(root)