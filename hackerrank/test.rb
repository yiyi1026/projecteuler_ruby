# head = hash.select{|x|hash[x] == 1}
# start = head.keys.first
# line = [start]
# until arr.empty?
#   len = arr.length
#   len.times do |i|
#     el = arr[i]
#     x = el[0]
#     y = el[1]
#     if x == line.last
#       line.push(y)
#       arr.delete_at(i)
#       break
#     elsif y == line.last
#         line.push(x)
#         arr.delete_at(i)
#         break
#     end
#   end
# end
# puts line

hash = {}
hash[1] = 2
hash[2] = 1
hash[3] = 1
arr = [[1,3],[2,1]]
s = [4,1,3,2,5,6]
cnt = s.count(0)

# if cnt.even? && false
#     l = s.length
#     l.times{|_|puts l}
# else
#     l_idx = s.index(0)
#     r_idx = s.rindex(0)
#     puts s, l_idx, r_idx
#     hash = Hash.new(0)
#     arr = []
#     for a1 in (0..n-1-1)
#         a, b = gets.strip.split(' ')
#         a = a.to_i
#         b = b.to_i
#         # Write Your Code Here
#         hash[a] += 1
#         hash[b] += 1
#         arr << [a,b]
#     end
#     head = hash.select{|x|hash[x] == 1}
#     start = head.keys.first
#     line = [start]
#     until arr.empty?
#       len = arr.length
#       len.times do |i|
#         el = arr[i]
#         x = el[0]
#         y = el[1]
#         if x == line.last
#           line.push(y)
#           arr.delete_at(i)
#           break
#         elsif y == line.last
#             line.push(x)
#             arr.delete_at(i)
#             break
#         end
#       end
#     end
#     s.length.times do |i|
#         num = line[i]
#         if num <= l_idx
#             puts r_idx
#         elsif num >= r_idx
#             puts s.length - l_idx - 1
#         else
#             max = [r_idx, s.length - l_idx - 1].max
#             puts max
#         end
#     end
# end

arr = [1]
# puts arr[1..-1]
a = 'abccba'
b = 'bbaa'
c = 'baab'

# def su(s)
#   new_s = s.sub(/(.)\1/,"")
#   until s.length == new_s.length
#     s = new_s
#     new_s = s.sub(/(.)\1/,"")
#   end
#   s
# end


p su(a)