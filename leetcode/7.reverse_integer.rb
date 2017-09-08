=begin
Reverse digits of an integer.

Example1: x = 123, return 321
Example2: x = -123, return -321

click to show spoilers.

spoilers => 
Have you thought about this?
Here are some good questions to ask before coding. Bonus points for you if you have already thought through this!

If the integer's last digit is 0, what should the output be? ie, cases such as 10, 100.

Did you notice that the reversed integer might overflow? Assume the input is a 32-bit integer, then the reverse of 1000000003 overflows. How should you handle such cases?

For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

Note:
The input is assumed to be a 32-bit signed integer. Your function should return 0 when the reversed integer overflows.
=end

def reverse(x)
  reversed = x.to_s.reverse
  if reversed[-1] == '-'
    reversed =  -reversed[0...-1].to_i
  else
    reversed = reversed.to_i
  end

  if reversed.abs < 2**31-1
      return reversed
  end
    0
    
end