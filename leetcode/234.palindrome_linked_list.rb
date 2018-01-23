'''
Given a singly linked list, determine if it is a palindrome.

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
# @return {Boolean}
def is_palindrome(head)
  sol = []
  until head.nil?
    sol << head.val
    head = head.next
  end
  until sol.length < 2
    return false unless sol.pop == sol.shift
  end
  true
end