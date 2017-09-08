'''
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
'''

def add_two_numbers(l1, l2)
  carry =0
  h = ListNode.new(-1)
  result = h

  until l1.nil? && l2.nil? && carry == 0
    l1 = ListNode.new(0) if l1.nil?
    l2 = ListNode.new(0) if l2.nil?
    tmp = l1.val + l2.val + carry
    carry = 0
    if tmp > 9
      tmp -= 10
      carry = 1
    end
    result.next = ListNode.new(tmp)
    result = result.next
    l1=l1.next
    l2=l2.next
  end


  h.next
end