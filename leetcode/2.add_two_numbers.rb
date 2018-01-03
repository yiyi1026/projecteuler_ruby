'''
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
'''
# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def add_two_numbers(l1, l2)
  head = ListNode.new(0)
  result = head
  carry = 0

  until l1.nil? && l2.nil? && carry == 0
    l1 = ListNode.new(0) if l1.nil?
    l2 = ListNode.new(0) if l2.nil?
    temp_result = l1.val + l2.val + carry
    carry = 0
    if temp_result > 9
      temp_result -= 10
      carry = 1
    end
    result.next = ListNode.new(temp_result)
    result = result.next
    l1 = l1.next
    l2 = l2.next
  end
  head.next
end