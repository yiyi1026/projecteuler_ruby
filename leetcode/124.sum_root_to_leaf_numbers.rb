'''
Given a binary tree containing digits from 0-9 only, each root-to-leaf path could represent a number.

An example is the root-to-leaf path 1->2->3 which represents the number 123.

Find the total sum of all root-to-leaf numbers.

For example,

    1
   / \
  2   3
The root-to-leaf path 1->2 represents the number 12.
The root-to-leaf path 1->3 represents the number 13.

Return the sum = 12 + 13 = 25.
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
def paths(root, passed="", solution=[])
  passed += root.val.to_s unless root.nil?
  if root.nil? || (root.left.nil? && root.right.nil?)
    solution << passed unless passed.empty?
  else
    if root.left
      paths(root.left, passed, solution)
    end
    if root.right
      paths(root.right, passed, solution)
    end
  end
  return solution
end

def sum_numbers(root)
  paths(root).reduce(0){|acc,str|acc + str.to_i}
end



