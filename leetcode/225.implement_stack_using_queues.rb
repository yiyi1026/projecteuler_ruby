'''

Implement the following operations of a stack using queues.

push(x) -- Push element x onto stack.
pop() -- Removes the element on top of the stack.
top() -- Get the top element.
empty() -- Return whether the stack is empty.
Notes:
You must use only standard operations of a queue -- which means only push to back, peek/pop from front, size, and is empty operations are valid.
Depending on your language, queue may not be supported natively. You may simulate a queue by using a list or deque (double-ended queue), as long as you use only standard operations of a queue.
You may assume that all operations are valid (for example, no pop or top operations will be called on an empty stack).
Credits:
Special thanks to @jianchao.li.fighter for adding this problem and all test cases.
'''
require 'thread'
class MyStack

  attr_accessor :queue
  =begin
      Initialize your data structure here.
  =end
      def initialize()
        @queue = Queue.new
      end
  
  
  =begin
      Push element x onto stack.
      :type x: Integer
      :rtype: Void
  =end
      def push(x)
        @queue.push(x)
        nil
      end
  
  
  =begin
      Removes the element on top of the stack and returns that element.
      :rtype: Integer
  =end
      def pop()
        new_queue = Queue.new
        until @queue.size == 1
            new_queue << @queue.pop
        end
        last = @queue.pop
        @queue = new_queue
        last
      end
  
  
  =begin
      Get the top element.
      :rtype: Integer
  =end
      def top()
        tp = pop
        push(tp)
        tp
      end
  
  
  =begin
      Returns whether the stack is empty.
      :rtype: Boolean
  =end
      def empty()
          @queue.size == 0
      end
  
  
  end
  
  # Your MyStack object will be instantiated and called as such:
  # obj = MyStack.new()
  # obj.push(x)
  # param_2 = obj.pop()
  # param_3 = obj.top()
  # param_4 = obj.empty()