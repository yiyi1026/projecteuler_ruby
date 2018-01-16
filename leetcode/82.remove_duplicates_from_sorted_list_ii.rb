'''
Given a sorted linked list, delete all nodes that have duplicate numbers, leaving only distinct numbers from the original list.

For example,
Given 1->2->3->3->4->4->5, return 1->2->5.
Given 1->1->1->2->3, return 2->3.
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
def delete_duplicates(head)
  return head if head.nil? || head.next.nil?
	solution = ListNode.new(nil)
	solution_acc = solution
	head_acc = head
	current_acc = head_acc
	head_acc = head_acc.next
  repeat = false
	until head_acc.nil?
		
		if head_acc.val == current_acc.val
			until head_acc.nil? || head_acc.val != current_acc.val
				head_acc = head_acc.next
			end
			# p head_acc
			if head_acc.nil?
				current_acc = nil
				break
			end
			if head_acc.next.nil?
				solution_acc.next = head_acc
				solution_acc = solution_acc.next
				current_acc = nil
				break
			else
				current_acc = head_acc
				head_acc = head_acc.next
			end
		else
			solution_acc.next = current_acc
			current_acc = head_acc
			solution_acc = solution_acc.next
			head_acc = head_acc.next
		end
	end
	solution_acc.next = current_acc
	current_acc.next = nil unless current_acc.nil?
	solution.next
end

def delete_duplicates(head)
	dummy = ListNode.new(nil)
	dummy.next = head
	prev = dummy
	cur = head

	while cur && cur.next
		if cur.val == cur.next.val
			val = cur.val
			while cur && cur.val == val
				cur = cur.next
			end
			prev.next = cur
		else
			prev = prev.next
			cur = cur.next
		end
	end
	dummy.next
end

arr = [1]
head = ListNode.new(1)
start = head
arr.each do |val|
  start.next = ListNode.new(val)
  start = start.next
end
# start.next = ListNode.new(start.val)
# start = start.next
# start.next = ListNode.new(start.val)

p head

p delete_duplicates(head)