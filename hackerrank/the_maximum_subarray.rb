n = gets.strip.to_i
n.times do |i|
  cnt = gets.strip.to_i
  lst = gets.strip.split.map(&:to_i)
  if cnt == 1
      puts lst[0].to_s + " " + lst[0].to_s
  else
      largest = lst[0]
      current_sum = lst[0]
      
      if lst.all?{|x| x < 0}
          puts lst.max.to_s + " " + lst.max.to_s
      else
          all =  lst[0] >= 0 ? lst[0] : 0
          
          lst.drop(1).each do |el|
              current_sum = 0 if current_sum < 0
              current_sum += el
              all += el if el > 0
              largest = current_sum if current_sum > largest
          end
          puts largest.to_s + " " + all.to_s
          
      end
      
      
  end
end