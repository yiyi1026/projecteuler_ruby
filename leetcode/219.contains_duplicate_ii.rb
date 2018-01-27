'''
Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.
'''

def contains_nearby_duplicate(nums, k)
  hash = Hash.new{|h,k|h[k] = []}
  nums.each_with_index do |num, idx|
    if hash[num]
      return true if hash[num].any?{|i|(idx - i) <= k}
    end
    hash[num] << idx
  end
  false
end

# revised, inspired by 68m submission
def contains_nearby_duplicate(nums, k)
  return false if k == 0
  hash = Hash.new(0)
  len = nums.length
  k = len - 1 if k > len - 1
  (0..k).each do |i|
    return true if hash[nums[i]] > 0
    hash[nums[i]] += 1
  end
  (k+1...len).each do |j|
    hash[nums[j-k-1]] -= 1
    return true if hash[nums[j]] > 0
    hash[nums[j]] += 1
  end

  false
end
