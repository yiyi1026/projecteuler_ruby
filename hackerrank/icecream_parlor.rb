def choice(costs, m)
  indices = []
  hash = {}
  costs.each_with_index do |cost, idx|
    #indices << idx + 1 if m % 2 == 0 && cost == m / 2
    pair = hash[m-cost]
    if pair && (pair != idx + 1)
      puts pair
      return [pair, idx+1].sort.join(" ")
    else
      hash[cost] = idx + 1
    end
      
  end
  'here'
end

p choice([1,3,2,9,4,8], 17)