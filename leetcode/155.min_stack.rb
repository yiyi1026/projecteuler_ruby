'''
Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

push(x) -- Push element x onto stack.
pop() -- Removes the element on top of the stack.
top() -- Get the top element.
getMin() -- Retrieve the minimum element in the stack.
Example:
MinStack minStack = new MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
minStack.getMin();   --> Returns -3.
minStack.pop();
minStack.top();      --> Returns 0.
minStack.getMin();   --> Returns -2.
'''

class MinStack

  #  initialize your data structure here.
  attr_accessor :stack
  def initialize(val = nil)
    @stack = val.nil? ? [] : [val]
  end


  # :type x: Integer
  # :rtype: Void

  def push(x)
    @stack << x
    nil     
  end

  # :rtype: Void

  def pop()
    @stack.pop
    nil
  end

  #:rtype: Integer

  def top()
     @stack.last 
  end

  #:rtype: Integer

  def get_min()
    @stack.min
  end

end
  
  # Your MinStack object will be instantiated and called as such:
  # obj = MinStack.new()
  # obj.push(x)
  # obj.pop()
  # param_3 = obj.top()
  # param_4 = obj.get_min()