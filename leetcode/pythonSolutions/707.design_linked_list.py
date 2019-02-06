'''
707. Design Linked List
Easy

Share
Design your implementation of the linked list. You can choose to use the singly linked list or the doubly linked list. A node in a singly linked list should have two attributes: val and next. val is the value of the current node, and next is a pointer/reference to the next node. If you want to use the doubly linked list, you will need one more attribute prev to indicate the previous node in the linked list. Assume all nodes in the linked list are 0-indexed.

Implement these functions in your linked list class:

get(index) : Get the value of the index-th node in the linked list. If the index is invalid, return -1.
addAtHead(val) : Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list.
addAtTail(val) : Append a node of value val to the last element of the linked list.
addAtIndex(index, val) : Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted.
deleteAtIndex(index) : Delete the index-th node in the linked list, if the index is valid.
Example:

MyLinkedList linkedList = new MyLinkedList();
linkedList.addAtHead(1);
linkedList.addAtTail(3);
linkedList.addAtIndex(1, 2);  // linked list becomes 1->2->3
linkedList.get(1);            // returns 2
linkedList.deleteAtIndex(1);  // now the linked list is 1->3
linkedList.get(1);            // returns 3
Note:

All values will be in the range of [1, 1000].
The number of operations will be in the range of [1, 1000].
Please do not use the built-in LinkedList library.
'''


class ListNode:
  def __init__(self, x):
      self.val = x
      self.next = None

class MyLinkedList(object):

    def __init__(self):
        """
        Initialize your data structure here.
        """
        self._head = None
        
    def getLength(self):
      i = 0
      pointer = self._head
      
      while pointer:
        i += 1
        pointer = pointer.next
      return i

    def get(self, index):
        """
        Get the value of the index-th node in the linked list. If the index is invalid, return -1.
        :type index: int
        :rtype: int
        """
        length = self.getLength()
        if index >= length or index < 0:
          return -1
        pointer = self._head
        i = 0
        while pointer:
          if i == index:
            return pointer.val        
          pointer = pointer.next
          i += 1
        return pointer.val
        
        

    def addAtHead(self, val):
        """
        Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list.
        :type val: int
        :rtype: void
        """
        newHead = ListNode(val)
        newHead.next = self._head
        self._head = newHead
        # return newHead
        

    def addAtTail(self, val):
        """
        Append a node of value val to the last element of the linked list.
        :type val: int
        :rtype: void
        """
        if self.getLength() == 0:
          self.addAtHead(val)
        else:
          pointer = self._head
          while pointer.next:
            pointer = pointer.next
          pointer.next = ListNode(val)
        

    def addAtIndex(self, index, val):
        """
        Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted.
        :type index: int
        :type val: int
        :rtype: void
        """
        length = self.getLength()
        if length < index:
          return
        elif length == index:
          self.addAtTail(val)
        else:
          if index == 0:
            self.addAtHead(val)
          else:
            pointer = self._head
            i = 0
            while i < index - 1:
              pointer = pointer.next
              i += 1
            tail = pointer.next
            newNode = ListNode(val)
            pointer.next = newNode
            newNode.next = tail
              

    def deleteAtIndex(self, index):
        """
        Delete the index-th node in the linked list, if the index is valid.
        :type index: int
        :rtype: void
        """
        length = self.getLength()
        head = self._head
        if index == 0:
          tail = head.next
          head.next = tail
          self._head = tail
        if index >= length:
          return
        # left = self.get(index-1)
        i = 0
        pointer = self._head
        while i < index -1:
          pointer = pointer.next
          i += 1
        pointer.next = pointer.next.next
    
    def print(self):
      head = self._head
      while head:
        print(head.val)
        head = head.next
      # print(self._head.val)
      # return self._head
