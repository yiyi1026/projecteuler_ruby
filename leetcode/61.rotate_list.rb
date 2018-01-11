'''
Given a list, rotate the list to the right by k places, where k is non-negative.

Example:

Given 1->2->3->4->5->NULL and k = 2,

return 4->5->1->2->3->NULL.
'''

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end

    def length
      cnt = 0
      start = self
      until start.nil?
        cnt += 1
        start = start.next
      end

      cnt
    end
end

def rotate_right(head, k)
  return head if head.nil?
  len = head.length
  return head if len <= 1
  k %= len
  result = []
  head_acc = head
  (len).times do |_|
    result << head_acc.val
    head_acc = head_acc.next
  end
  result = result.rotate(len - k)
  sol = ListNode.new(result[0])
  sol_acc = sol
  result[1..-1].each do |el|
    sol_acc.next = ListNode.new(el)
    sol_acc = sol_acc.next
  end
  sol
end

head = ListNode.new(1)
head.next = ListNode.new(2)
two = head.next
two.next = ListNode.new(3)
two = two.next
two.next = ListNode.new(4)
p head
p rotate_right(head,1)