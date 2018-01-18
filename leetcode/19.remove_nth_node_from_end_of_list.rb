'''
Given a linked list, remove the nth node from the end of list and return its head.

For example,

   Given linked list: 1->2->3->4->5, and n = 2.

   After removing the second node from the end, the linked list becomes 1->2->3->5.
Note:
Given n will always be valid.
Try to do this in one pass.
'''

class ListNode
  attr_accessor :val, :next
  def initialize(val)
      @val = val
      @next = nil
  end

  # def length
  #   cnt = 0
  #   head = self
  #   until head.nil?
  #     cnt += 1
  #     head = head.next
  #   end
  #   cnt
  # end
end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
# def remove_nth_from_end(head, n)
#   length = head.length
#   if length == 1
#     return []
#   elsif n == length
#     head = head.next
#   end
#   start = ListNode.new(head.val)
#   iter = start
#   cnt = 1
  
#   while cnt < length
#     if cnt == length - n
#       head = head.next
#     end

#     iter.next = head.next
#     iter = iter.next
#     head = head.next
#     cnt += 1
#   end
  
#   start
# end

# revised solution
def remove_nth_from_end(head, n)
  dummy = ListNode.new(nil)
  dummy.next = head
  slow = dummy
  fast = head
  (n-1).times do |_|
    fast = fast.next
  end

  until fast.next.nil?
    slow = slow.next
    fast = fast.next
  end
  
  slow.next = slow.next.next
  dummy.next
end

p "test starts here"
arr = [2,3,4,5]
head = ListNode.new(1)
# head.next = ListNode.new(2)
# start = head
# arr.each do |val|
#   start.next = ListNode.new(val)
#   start = start.next
# end
p remove_nth_from_end(head,1)

# p '___'
# arr = [2,3,4,5]
# head = ListNode.new(1)
# start = head
# arr.each do |val|
#   start.next = ListNode.new(val)
#   start = start.next
# end
# p remove_nth_from_end(head,2)
# p '___'
# arr = [2,3,4,5]
# head = ListNode.new(1)
# start = head
# arr.each do |val|
#   start.next = ListNode.new(val)
#   start = start.next
# end
# p remove_nth_from_end(head,3)
# p '___'
# arr = [2,3,4,5]
# head = ListNode.new(1)
# start = head
# arr.each do |val|
#   start.next = ListNode.new(val)
#   start = start.next
# end
# p remove_nth_from_end(head,4)
# p '___'
# arr = [2,3,4,5]
# head = ListNode.new(1)
# start = head
# arr.each do |val|
#   start.next = ListNode.new(val)
#   start = start.next
# end
# p remove_nth_from_end(head,5)