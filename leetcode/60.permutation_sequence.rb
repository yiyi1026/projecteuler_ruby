'''
The set [1,2,3,…,n] contains a total of n! unique permutations.

By listing and labeling all of the permutations in order,
We get the following sequence (ie, for n = 3):

"123"
"132"
"213"
"231"
"312"
"321"
Given n and k, return the kth permutation sequence.

Note: Given n will be between 1 and 9 inclusive.
'''
# def permutation(n)
#   return [''] if n == 0
#   return ['1'] if n == 1
#   prev = permutation(n-1)
#   result = []
#   prev.each do |str|
#     (str.length).downto(0) do |i|
#       result << str[0...i] + "#{n}" +str[i..-1]
#     end
#   end
#   result
# end

def get_permutation(n, k)
  (1..n).to_a.permutation.to_a.map(&:join)[k-1]
    # RTE
end
# p permutation(3)
# p get_permutation(3)
n = 3
p (1..n).to_a.permutation.to_a.map(&:join)