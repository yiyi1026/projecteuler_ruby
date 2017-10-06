#Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.
# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    new = []
    while l1 && l2
        case l1.val <=> l2.val
        when 1
            new << l2.val
            l2 = l2.next
        else
            new << l1.val
            l1 = l1.next
        end
    end
    if l1
        until l1.nil?
            new << l1.val
            l1 = l1.next
        end
    end
    if l2
        until l2.nil?
            new << l2.val
            l2 = l2.next
        end
    end
    new
end