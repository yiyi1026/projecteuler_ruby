'''
Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.

You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.

Example 1:
Input: 
	Tree 1                     Tree 2                  
          1                         2                             
         / \                       / \                            
        3   2                     1   3                        
       /                           \   \                      
      5                             4   7                  
Output: 
Merged tree:
	     3
	    / \
	   4   5
	  / \   \ 
	 5   4   7
Note: The merging process must start from the root nodes of both trees.
'''

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {TreeNode}
t1 = TreeNode.new(1)
t1.left = TreeNode.new(3)
t1.right = TreeNode.new(2)
t1.left.left = TreeNode.new(5)

t2 = TreeNode.new(2)
t2.left = TreeNode.new(1)
t2.right = TreeNode.new(3)
t2.left.right = TreeNode.new(4)
t2.right.right = TreeNode.new(7)

def merge_trees(t1, t2)
  return nil if t1.nil? && t2.nil?
  root = TreeNode.new((t1 ? t1.val : 0) + (t2 ? t2.val : 0))
  root.left = merge_trees(t1 && t1.left, t2 && t2.left)
  root.right = merge_trees(t1 && t1.right, t2 && t2.right)
  root
end


t1 = TreeNode.new(1)
t1.left = TreeNode.new(3)
t1.right = TreeNode.new(2)
t1.left.left = TreeNode.new(5)

t2 = TreeNode.new(2)
t2.left = TreeNode.new(1)
t2.right = TreeNode.new(3)
t2.left.right = TreeNode.new(4)
t2.right.right = TreeNode.new(7)
p merge_trees(t1, t2)