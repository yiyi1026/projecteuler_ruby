'''
Given a collection of candidate numbers (C) and a target number (T), find all unique combinations in C where the candidate numbers sums to T.

Each number in C may only be used once in the combination.

Note:
All numbers (including target) will be positive integers.
The solution set must not contain duplicate combinations.
For example, given candidate set [10, 1, 2, 7, 6, 1, 5] and target 8, 
A solution set is: 
[
  [1, 7],
  [1, 2, 5],
  [2, 6],
  [1, 1, 6]
]
'''
require "Set"
def combination_sum2(candidates, target, idx = 0,  currentsum = 0, selected = [], ret = Set[])
    if currentsum >= target
      select_sort = selected.sort
      ret << select_sort if currentsum == target && !ret.include?(select_sort)
      return
    end

    candidates[idx..-1].each_with_index do |num, id|
      combination_sum2(candidates, target, id+idx+1, currentsum + num, selected + [num], ret)
    end
    ret.to_a
end

p combination_sum2([10, 1, 2, 7, 6, 1, 5], 8)