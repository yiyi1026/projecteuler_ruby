'''
Given a singly linked list where elements are sorted in ascending order, convert it to a height balanced BST.

For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.


Example:

Given the sorted linked list: [-10,-3,0,5,9],

One possible answer is: [0,-3,9,-10,null,5], which represents the following height balanced BST:

      0
     / \
   -3   9
   /   /
 -10  5
'''

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {ListNode} head
# @return {TreeNode}

# def sorted_array_to_bst(array)
#   dummy = TreeNode.new(nil)
#   return dummy if array.empty?
#   mid_idx = array.length/2
#   mid = array[mid_idx]
#   left = array[0...mid_idx]
#   right = array[mid_idx+1..-1]
#   dummy = TreeNode.new(mid)
#   dummy.left = sorted_array_to_bst(left) unless left.empty?
#   dummy.right = sorted_array_to_bst(right) unless right.empty?
#   dummy
# end

# version 1: memory exceeded
# def sorted_list_to_bst(head)
#   array = []
#   until head.nil?
#     array << head.val
#     head = head.next
#   end
#   sorted_array_to_bst(array)
# end

def sorted_list_to_bst(head)

end

head = ListNode.new(-10)
start = head
[-3,0,5,9].each do |n|
  start.next = ListNode.new(n)
  start = start.next
end

p head

# p sorted_array_to_bst()

p sorted_list_to_bst(head)