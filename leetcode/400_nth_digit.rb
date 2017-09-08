'''Find the nth digit of the infinite integer sequence 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, ...
Example :
Input : 11
Output : 0
the 11th digit of the sequence 1,2,3,4,5,6,7,8,9,10
'''

def find_nth_digit(n)
  return n if n < 10
  i = 2
  
  until n < i * 9 * 10 ** (i-1)
    n -= i * 9 * 10 ** (i-1)
    i += 1
  end
  i
end

p find_nth_digit(190)

