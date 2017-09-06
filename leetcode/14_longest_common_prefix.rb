def longest_common_prefix(strs) # leetcode 14
  # return '' if strs.empty?
  len_array = strs.map(&:length)
  limit = len_array.length
  return '' if limit == 0
  prefix = strs[0].slice(0, limit)
  strs.each do |el|
      unless el.index(prefix) && el.index(prefix) == 0
        new_len = prefix.length -1
        return '' if new_len == 0
        prefix = prefix.slice(0, new_len)
      end
  end
  prefix
end

p longest_common_prefix(['a', 'b'])