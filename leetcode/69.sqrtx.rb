'''
Implement int sqrt(int x).

Compute and return the square root of x.

x is guaranteed to be a non-negative integer.


Example 1:

Input: 4
Output: 2
Example 2:

Input: 8
Output: 2
Explanation: The square root of 8 is 2.82842..., and since we want to return an integer, the decimal part will be truncated.

'''

def sqrt (x)
  return x if x == 0 || x == 1
  i = 1
  until (i+1)**2 > x
    i += 1
  end

  i
end

def sqrt1(x)
  cut = x.to_s.chars
  if cut.length % 2 > 0
    remainder = cut[0].to_i
    cut.shift
    result=''
  else
    remainder = (cut[0] + cut[1]).to_i
    cut = cut[2..-1]
    result=''

  end    
  (9.downto(1)).each do |i|
    if i**2 <= remainder
      result += i.to_s
      break
    end
  end

  remainder = (remainder - result.to_i**2)
  mid = 2*10*(result.to_i)

  while cut.length > 0

    cut << '0' if cut.length == 1
    remainder = (remainder.to_s + cut[0..1].join("")).to_i
    cut = cut[2..-1]
    temp = 0
    temp += 1 until (mid+temp)*temp > remainder
    if temp > 0
      temp -= 1
      result += temp.to_s
    else
      temp = 0
      result += 0.to_s
    end
    remainder -= (mid+temp)*temp
    mid += temp*2
    mid = mid * 10
  end
  result.to_i
end

p sqrt1(2147302921)
