'''
Reverse a singly linked list.

click to show more hints.

Hint:
A linked list can be reversed either iteratively or recursively. Could you implement both?
'''

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  dummy = ListNode.new(nil)
  dummy.next = head

  prev = dummy
  cur = head

  until cur.nil? || cur.next.nil?
    temp = cur.next
    cur.next = temp.next
    temp.next = prev.next
    prev.next = temp
  end
  dummy.next
end

arr = [2,3,4,5]
head = ListNode.new(1)
start = head
arr.each do |val|
  start.next = ListNode.new(val)
  start = start.next
end

p reverse_list(head)