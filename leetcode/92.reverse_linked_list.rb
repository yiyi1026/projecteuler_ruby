'''
Reverse a linked list from position m to n. Do it in-place and in one-pass.

For example:
Given 1->2->3->4->5->NULL, m = 2 and n = 4,

return 1->4->3->2->5->NULL.

Note:
Given m, n satisfy the following condition:
1 ≤ m ≤ n ≤ length of list.
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
# @param {Integer} m
# @param {Integer} n
# @return {ListNode}
def reverse_between(head, m, n)
  dummy = ListNode.new(nil)
  prev = dummy
  dummy.next = head
  cur = head
  (m-1).times do |_|
    prev = prev.next
    cur = cur.next
  end

  (n-m).times do |_|
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

p head
p reverse_between(head, 2, 4)