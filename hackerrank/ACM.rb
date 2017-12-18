n = 4
m = 5

topics = [
  "10101",
  "11100",
  "11010",
  "00101"
]

def cnt(arr)
  arr.count{|slice|slice[0] == '1' || slice[1] == '1'}
end

topics_rev = topics.map{|str|str.split("")}

max_topic = 0
amount = 0

(0...n).to_a.combination(2).each do |arr|
  left = topics_rev[arr[0]]
  right = topics_rev[arr[1]]
  #puts left
  #puts right
  comb = left.zip(right)
  if cnt(comb) > max_topic
    max_topic = cnt(comb)
    amount = 1
  elsif cnt(comb) == max_topic
    amount += 1
  end
end

puts max_topic
puts amount
