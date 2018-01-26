'''
Given a non-empty array of integers, return the third maximum number in this array. If it does not exist, return the maximum number. The time complexity must be in O(n).

Example 1:
Input: [3, 2, 1]

Output: 1

Explanation: The third maximum is 1.
Example 2:
Input: [1, 2]

Output: 2

Explanation: The third maximum does not exist, so the maximum (2) is returned instead.
Example 3:
Input: [2, 2, 3, 1]

Output: 1

Explanation: Note that the third maximum here means the third maximum distinct number.
Both numbers with value 2 are both considered as second maximum.
'''

def third_max(nums)
  window = []
  nums.each do |num|
    next if window.include?(num)
    if window.length < 3
      window << num
      window.sort!
    else
      if num > window.last
        window.shift
        window.push(num)
      elsif num > window[1]
        window[0], window[1] = window[1], num
      elsif num > window[0]
        window[0] = num
      end
    end
  end
  p window
  window.length < 3 ? window.last : window.first
end

p third_max([1,2,2,5,3,5])
# p third_max([5, 2, 2])