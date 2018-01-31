'''
Given a sorted linked list, delete all duplicates such that each element appear only once.

For example,
Given 1->1->2, return 1->2.
Given 1->1->2->3->3, return 1->2->3.
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
# def delete_duplicates(head)
#   return head if head.nil? || head.val.nil?
#   result = ListNode.new(head.val)
#   result_acc = result
#   head_acc = head
#   lookup = {head.val => true}
  
#   until head_acc.nil?
#     if lookup[head_acc.val]
#       head_acc = head_acc.next
#     else
#       lookup[head_acc.val] = true
#       result_acc.next = ListNode.new(head_acc.val)
#       result_acc = result_acc.next
#       head_acc = head_acc.next
#     end
#   end
#   result
# end

# revised 1
# def delete_duplicates(head)
#   return head if head.nil? || head.next.nil?
#   dummy = ListNode.new(nil)
#   dummy.next = head
#   slow = head
#   fast = head
#   cur = head.val

#   until fast.nil?
#     if cur == fast.val
#       fast = fast.next
#     else
#       slow.next = fast
#       cur = fast.val
#       fast = fast.next
#       slow = slow.next
#     end
#   end

#   slow.next = nil
#   dummy.next
# end

# revised 2
def delete_duplicates(head)
  return head if head.nil? || head.next.nil?
  dummy = ListNode.new(nil)
  dummy.next = head
  slow = head
  fast = head

  until fast.nil?
    unless slow.val == fast.val
      slow.next = fast
      slow = slow.next
    end
    fast = fast.next
  end

  slow.next = nil
  dummy.next
end

arr = [2,3,4,5]
head = ListNode.new(1)
start = head
arr.each do |val|
  start.next = ListNode.new(val)
  start = start.next
end
start.next = ListNode.new(start.val)
start = start.next
start.next = ListNode.new(start.val)
p head
p delete_duplicates(head)
