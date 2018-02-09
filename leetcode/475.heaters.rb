'''
Winter is coming! Your first job during the contest is to design a standard heater with fixed warm radius to warm all the houses.

Now, you are given positions of houses and heaters on a horizontal line, find out minimum radius of heaters so that all houses could be covered by those heaters.

So, your input will be the positions of houses and heaters seperately, and your expected output will be the minimum radius standard of heaters.

Note:
Numbers of houses and heaters you are given are non-negative and will not exceed 25000.
Positions of houses and heaters you are given are non-negative and will not exceed 10^9.
As long as a house is in the heaters\' warm radius range, it can be warmed.
All the heaters follow your radius standard and the warm radius will the same.
Example 1:
Input: [1,2,3],[2]
Output: 1
Explanation: The only heater was placed in the position 2, and if we use the radius 1 standard, then all the houses can be warmed.
Example 2:
Input: [1,2,3,4],[1,4]
Output: 1
Explanation: The two heater was placed in the position 1 and 4. We need to use radius 1 standard, then all the houses can be warmed.
'''

# @param {Integer[]} houses
# @param {Integer[]} heaters
# @return {Integer}
def find_radius(houses, heaters)
  houses.sort!
  heaters.sort!
  hash = {}
  j = 0
  j_max = heaters.length
  houses.each do |house|
    j += 1 until j == j_max || house <= heaters[j]
    if j == j_max
      hash[house] = (house-heaters[j-1]).abs
    elsif j > 0
      val = [heaters[j]-house, (heaters[j-1]-house).abs].min
      hash[house] = val
    else
      hash[house] = heaters[j]-house
    end
  end
  p hash
  hash.values.max
end

  
# def find_radius(houses, heaters)
#   len = houses.length
#   radius = (houses[0] - heaters[0]).abs
#   i = 1
#   j = 0
#   i_max = houses.length
#   j_max = heaters.length
#   while i < i_max && j < j_max
#     case houses[i] <=> heaters[j]
#       when 1
#         radius = houses[i] - heaters[j] if radius < houses[i] - heaters[j]
#         i += 1
#       when 0
#         i += 1
#         j += 1
#       when -1
#         radius = heaters[j] - houses[i] if radius < heaters[j] - houses[i]
#         i += 1
#     end

#   end
#   radius
# end

# houses = [1,2,3]
houses = [1,5]
heaters = [10]
p find_radius(houses, heaters)