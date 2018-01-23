'''
Remove all elements from a linked list of integers that have value val.

Example
Given: 1 --> 2 --> 6 --> 3 --> 4 --> 5 --> 6, val = 6
Return: 1 --> 2 --> 3 --> 4 --> 5

Credits:
Special thanks to @mithmatt for adding this problem and creating all test cases.
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
# @param {Integer} val
# @return {ListNode}

def remove_elements(head, val)
  return nil if head.nil?
  dummy = ListNode.new(nil)
  dummy.next = head
  slow = dummy
  fast = head
  until fast.nil?
    if fast.val == val
      fast = fast.next
    else
      slow.next = fast
      fast = fast.next
      slow = slow.next
    end
  end
  slow.next = nil
  dummy.next
end

def remove_elements(head, val)
  return nil if head.nil?
  head.next = remove_elements(head.next, val)
  return head.val == val ? head.next : head
end