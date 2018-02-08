'''

Given an array of characters, compress it in-place.

The length after compression must always be smaller than or equal to the original array.

Every element of the array should be a character (not int) of length 1.

After you are done modifying the input array in-place, return the new length of the array.


Follow up:
Could you solve it using only O(1) extra space?


Example 1:
Input:
["a","a","b","b","c","c","c"]

Output:
Return 6, and the first 6 characters of the input array should be: ["a","2","b","2","c","3"]

Explanation:
"aa" is replaced by "a2". "bb" is replaced by "b2". "ccc" is replaced by "c3".
Example 2:
Input:
["a"]

Output:
Return 1, and the first 1 characters of the input array should be: ["a"]

Explanation:
Nothing is replaced.
Example 3:
Input:
["a","b","b","b","b","b","b","b","b","b","b","b","b"]

Output:
Return 4, and the first 4 characters of the input array should be: ["a","b","1","2"].

Explanation:
Since the character "a" does not repeat, it is not compressed. "bbbbbbbbbbbb" is replaced by "b12".
Notice each digit has it\'s own entry in the array.
Note:
All characters have an ASCII value in [35, 126].
1 <= len(chars) <= 1000.

'''

# @param {Character[]} chars
# @return {Integer}
# def compress(chars)
#   i = 0
#   j = i + 1
#   hash = Hash.new(0)
#   hash[chars[i]] += 1
#   # while j < chars.length
#   while i < chars.length
#     hash[chars[j]] += 1

#     unless chars[i] == chars[j]
#       cnt = hash[chars[i]]
#       if cnt < 2
#         hash[chars[i]] = 0
#         i += 1
#         chars[i] = chars[j]
#         hash[chars[i]] = 1
#         j += 1
#         next
#       else
#         k = i + 1
#         cnt.to_s.chars.each do |chr|
#           chars[k] = chr
#           k += 1
#         end
#         hash[chars[i]] = 0
#         i = k
#         chars[i] = chars[j]
#       end
#     end
#     j += 1
#   end
#   cnt = hash[chars[i]]
#   if cnt > 1
#     k = i + 1
#     cnt.to_s.chars.each do |chr|
#       chars[k] = chr
#       k += 1
#     end
#     # p chars
#     return k
#   else
#     return i + 1
#   end

# end

def compress(chars)
  i = 0
  j = 0
  while i < chars.length
    cnt = 0
    while chars[j + cnt] && chars[cnt + j] == chars[i]
      cnt += 1
    end
    if j + cnt == chars.length || cnt > 1
      if cnt < 2
        break 
      end
      temp = 1
      cnt.to_s.chars.each do |chr|
        chars[i+temp] = chr
        temp += 1
      end
      if j + cnt >= chars.length 
        return i + temp
      else
        chars[i+temp] = chars[j+cnt] 
        i += temp
      end
    else
      chars[i+1] = chars[cnt+j]
      i += 1
    end
    j += cnt
  end
  return i + cnt
end

arr = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
# arr = ["a","a","b","b","c"]
# arr = ["a","a","a","b","b","a","a"]
# arr = ["a","b","c","d","e","f","g","g","g","g","g","g","g","g","g","g","g","g","a","b","c"]
# arr = ["a","a","a","a","a","b"]
arr = ["a", "a"]
p arr
p compress(arr)