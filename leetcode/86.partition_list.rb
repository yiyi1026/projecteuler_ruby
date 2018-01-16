'''
Given a linked list and a value x, partition it such that all nodes less than x come before nodes greater than or equal to x.

You should preserve the original relative order of the nodes in each of the two partitions.

For example,
Given 1->4->3->2->5->2 and x = 3,
return 1->2->2->4->3->5.
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
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  small = ListNode.new(nil)
  large = ListNode.new(nil)
  sm = small
  lg = large
  cur = head
  until cur.nil?
    case cur.val <=> x
    when 1
      lg.next = cur
      lg = lg.next
    when 0
      lg.next = cur
      lg = lg.next
    else
      sm.next = cur
      sm = sm.next
    end
    cur = cur.next
  end
  lg.next = nil
  sm.next = large.next
  small.next
               
end

# arr = [1]
head = ListNode.new(2)
head.next = ListNode.new(1)
# start = head
# arr.each do |val|
#   start.next = ListNode.new(val)
#   start = start.next
# end

p partition(head, 2)