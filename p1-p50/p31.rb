#P31
# In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:
#   1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:
# 1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
# How many different ways can £2 be made using any number of coins?
require 'Set'
@cnt = 0
@list = [200, 100, 50, 20, 10, 5, 2, 1]

def recursive_find(remaining, ind)
  if ind == 7 || remaining == 0
    @cnt += 1
    return
  end
  while remaining >= 0
    recursive_find(remaining, ind+1)
    remaining -= @list[ind]
  end
end

a = Time.now
recursive_find(200, 0)
p @cnt
p Time.now - a