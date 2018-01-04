'''
Given an array S of n integers, are there elements a, b, c, and d in S such that a + b + c + d = target? Find all unique quadruplets in the array which gives the sum of target.

Note: The solution set must not contain duplicate quadruplets.

For example, given array S = [1, 0, -1, 0, -2, 2], and target = 0.

A solution set is:
[
  [-1,  0, 0, 1],
  [-2, -1, 1, 2],
  [-2,  0, 0, 2]
]
'''
# runtime 276ms
def four_sum(nums, target)
  array = nums.sort
  sums_hash = {}
  array.each_with_index do |el, i|
    array.each_with_index do |el2, j|
      next if i >= j

      if sums_hash[el + el2]
        sums_hash[el + el2] << [i,j]
      else
        sums_hash[el + el2] = [[i, j]]
      end
    end
  end

  result = []
  sums_hash.keys.each do |sum|
    target_sum = sums_hash[target - sum]

    if target_sum
      target_sum.each do |indices|
        selected = sums_hash[sum].select do |idx2|
          (indices+idx2).uniq.length == 4
        end
        unless selected.empty?
          selected.each do |x|
            temp = []
            (x+indices).each do |idx|
              temp << array[idx]
            end
            result << temp.sort
          end
        end
      end
    end
  end
  result.uniq
end

arr = [1, 0, -1, 0, -2, 2]
p four_sum(arr, 0)