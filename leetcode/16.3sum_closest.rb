'''
Given an array S of n integers, find three integers in S such that the sum is closest to a given number, target. Return the sum of the three integers. You may assume that each input would have exactly one solution.

    For example, given array S = {-1 2 1 -4}, and target = 1.

    The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
'''

def three_sum_closest(nums, target)
  # nums should be array with at least 3 elememts
  sorted = nums.sort
  n = sorted.length
  i = 0
  distance = target - (nums[0] + nums[1] + nums[2])
  while i < n - 2
    j = i + 1
    k = n - 1
    while j < k
      cur_val = sorted[i] + sorted[j] + sorted[k]
      cur_distance = (target - cur_val)

      case cur_distance <=> 0
      when 1
        if cur_distance.abs < distance.abs
          distance = cur_distance
        end
        j += 1
        next
      when 0
        return target
      when -1
        if cur_distance.abs < distance.abs
          distance = cur_distance
        end
        k -= 1
      end        
    end

    i += 1
  end
  target - distance
end

p three_sum_closest([0,2,1,-3], 1)