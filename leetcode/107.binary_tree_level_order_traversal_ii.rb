'''

Given a binary tree, return the bottom-up level order traversal of its nodes\' values. (ie, from left to right, level by level from leaf to root).

For example:
Given binary tree [3,9,20,null,null,15,7],
    3
   / \
  9  20
    /  \
   15   7
return its bottom-up level order traversal as:
[
  [15,7],
  [9,20],
  [3]
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
def level_order_bottom(root)
	queue = [[root]]
	solution = []
	until queue.empty?
			arr = queue.shift
			next if arr.empty?
			len = arr.length
			sol_el = []
			queue_el = []
			len.times do |_|
			el = arr.shift
			next if el.nil?
			sol_el << el.val
			queue_el << el.left if el.left
			queue_el << el.right if el.right
			queue << queue_el
			end
			solution.unshift(sol_el) unless sol_el.empty?
	end

	solution
	end
	
tree = TreeNode.new(1)
tree.left = TreeNode.new(2)
tree.right = TreeNode.new(3)
tree.left.left = TreeNode.new(4)
tree.right.right = TreeNode.new(5)


p level_order_bottom(tree)