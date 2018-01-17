'''
Given a binary tree, return the zigzag level order traversal of its nodes\' values. (ie, from left to right, then right to left for the next level and alternate between).

For example:
Given binary tree [3,9,20,null,null,15,7],
    3
   / \
  9  20
    /  \
   15   7
return its zigzag level order traversal as:
[
  [3],
  [20,9],
  [15,7]
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
# @return {Integer[][]}
def zigzag_level_order(root)
  queue = [[root]]
  solution = []
  rev = true
  until queue.empty?
    arr = queue.shift
    next if arr.empty?
    len = arr.length
    sol_el = []
    queue_el = []
    rev = !rev
    len.times do |_|
      el = arr.shift
      next if el.nil?
      sol_el << el.val
      queue_el << el.left if el.left
      queue_el << el.right if el.right
      queue << queue_el
    end
    unless sol_el.empty?
      if rev
        solution << sol_el.reverse
      else
        solution << sol_el
      end
    end
  end

  solution
end

tree = TreeNode.new(1)
tree.left = TreeNode.new(2)
tree.right = TreeNode.new(3)
tree.left.left = TreeNode.new(4)
tree.right.right = TreeNode.new(5)

p zigzag_level_order(tree)