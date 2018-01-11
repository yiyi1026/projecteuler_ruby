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
def comp(n, k)
  cnt = 2
  k_comp = k
  while cnt < n && k_comp >= cnt
    k_comp /= cnt
    cnt += 1
  end
  k_comp
end

def get_permutation(n, k)
  return (1..n).to_a.permutation.to_a[k-1].join if k <= 5100 || k <= (1..n-1).reduce(1,:*)
  k_comp = comp(n, k) + 1
  k -= (2..n-1).reduce(1,:*) * (k_comp-1)
  p k_comp
  arr = (1...k_comp).to_a + (k_comp+1..n).to_a
  k_comp.to_s + arr.permutation.to_a[k-1].join
end

n = 9
k = 305645
p get_permutation(n, k)