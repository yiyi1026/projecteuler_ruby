'''
Given a linked list, swap every two adjacent nodes and return its head.

For example,
Given 1->2->3->4, you should return the list as 2->1->4->3.

Your algorithm should use only constant space. You may not modify the values in the list, only nodes itself can be changed.
'''

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {ListNode}
# def swap_pairs(head)
#   if head.nil? || head.next.nil?
#     return head
#   end
#   start = ListNode.new(head.next.val)
#   start.next = ListNode.new(head.val)
#   iter = start.next
#   head = head.next.next

#   until head.nil? || head.next.nil?
#     iter.next = ListNode.new(head.next.val)
#     iter = iter.next
#     iter.next = ListNode.new(head.val)
#     iter = iter.next
#     head = head.next.next
#   end
#   iter.next = head
#   start
# end
def swap_pairs(head)
  return head if head.nil? || head.next.nil?

  dummy = ListNode.new(nil)
  dummy.next = head
  slow = dummy
  fast = head
  while fast && fast.next 
    first = fast.next
    fast.next = first.next
    first.next = slow.next
    slow.next = first

    slow = slow.next.next
    fast = fast.next
  end
  dummy.next

end

start = ListNode.new(1)
start.next = ListNode.new(2)
head = start.next
head.next = ListNode.new(3)
head = head.next
head.next = ListNode.new(4)
head = head.next
head.next = ListNode.new(5)
head = head.next
head.next = ListNode.new(6)

p start
p swap_pairs(start)