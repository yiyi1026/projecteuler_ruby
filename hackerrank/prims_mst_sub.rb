# n for number of nodes, m for number of edges
n = 5
m = 6

edges = [
  "1 2 3",
  "1 3 4",
  "4 2 6",
  "5 2 2",
  "2 3 5",
  "3 5 7"
].map{|str|str.split.map(&:to_i)}

s = 1  # starting node

hash = {}
hash[s] = true

n.times do |i|
  edges_by_node[i] = edges_by_node[i].sort
end

total_costs = 0
until hash.length == n
  min_cost = -1
  pos = []
  
  # hash.keys includes all nodes already considered
  hash.keys.each do |key|
    cur_min_cost_edge = edges_by_node[key-1].first  #[cost, other_node-1]
    next unless cur_min_cost_edge
    
    new_node = cur_min_cost_edge[-1] + 1
    
    if hash[new_node]
      edges_by_node[key-1] = edges_by_node[key-1].reject{|arr|hash[arr[1]+1]}
      cur_min_cost_edge = edges_by_node[key-1].first
      next unless cur_min_cost_edge
      new_node = cur_min_cost_edge[-1] + 1
    end

    cur_cost = cur_min_cost_edge[0]
    if (min_cost == -1) || (min_cost > cur_cost)
      min_cost = cur_cost
      pos = [key, cur_min_cost_edge[1]+1]
    end

  end

  left_node, right_node = pos
  edges_by_node[left_node-1].shift
  hash[left_node] = true
  hash[right_node] = true

  total_costs += min_cost
end

puts total_costs

'''
initial method - RTE
# Enter your code here. Read input from STDIN. Print output to STDOUT
n, m = gets.strip.split.map(&:to_i)  
# n is number of nodes
# m is nomber of edges

matrix = Array.new(n){Array.new(n, -1)}

for i in (1..m)
  edge = gets.strip.split.map(&:to_i)
  node1 = edge[0]
  node2 = edge[1]
  # node1, node2 = node2, node1 if node1 > node2
  cost = edge[2]
  matrix[node1-1][node2-1] = cost
  matrix[node2-1][node1-1] = cost unless node1 == node2
end


s = gets.strip.to_i  # starting node

hash = {}
hash[s] = true

total_costs = 0
until hash.length == n
  min_cost = -1
  pos = []
  
  # hash.keys includes all nodes already considered
  hash.keys.each do |key|
    matrix[key-1].each_with_index do |x, i_y|
      next if (x == -1) || hash[i_y+1]
      if (min_cost == -1) || (min_cost > x)
        min_cost = x
        pos = [key, i_y+1].sort
      end
    end
  end

  #p pos
  pos_x, pos_y = pos
  hash[pos_x] = true
  hash[pos_y] = true
  total_costs += min_cost
end

# puts hash.keys
puts total_costs
'''


