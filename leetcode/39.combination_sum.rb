'''
Given a set of candidate numbers (C) (without duplicates) and a target number (T), find all unique combinations in C where the candidate numbers sums to T.

The same repeated number may be chosen from C unlimited number of times.

Note:
All numbers (including target) will be positive integers.
The solution set must not contain duplicate combinations.
For example, given candidate set [2, 3, 6, 7] and target 7, 
A solution set is: 
[
  [7],
  [2, 2, 3]
]
'''
@ret = []
def combination_sum(candidates, target, idx = 0, selected = [], currentsum = 0)
  if currentsum >= target
    @ret << selected if currentsum == target
    return 
  end
  candidates[idx..-1].each_with_index do |c,id|
    combination_sum(candidates, target, id+idx, selected + [c], currentsum + c)
  end

end

combination_sum([2,3,6,7], 7)
p @ret
