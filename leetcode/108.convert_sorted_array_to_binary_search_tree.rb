'''
Given an array where elements are sorted in ascending order, convert it to a height balanced BST.

For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.


Example:

Given the sorted array: [-10,-3,0,5,9],

One possible answer is: [0,-3,9,-10,null,5], which represents the following height balanced BST:

      0
     / \
   -3   9
   /   /
 -10  5
'''

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  return TreeNode.new(nil) if nums.empty?
  len = nums.length
  dummy = TreeNode.new(nums[len/2])
  root = dummy
  left = nums[0...len/2]
  right = nums[len/2+1..-1]
  dummy.left = sorted_array_to_bst(left) unless left.empty?
  dummy.right = sorted_array_to_bst(right) unless right.empty?

  dummy 
end

sorted = [0,1,2,3,4,5]

p sorted_array_to_bst(sorted)