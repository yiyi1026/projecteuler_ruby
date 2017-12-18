# KMP algorithm
def partial_match_table(s)
  # the longest common element between prefix set and suffix set 
  return 0 if s.length < 2

  prefix_arr = []
  suffix_arr = []

  s.length.times do |i|
    current_str = s[0..i]
    prefix_arr << s[0...i]
    suffix_arr[i] = []
    (1..i).each do |j|
      suffix_arr[i] << s[j..i]
    end
  end

  table = []
  prefix_arr.each_index do |idx|
    prefix = prefix_arr[0..idx]
    suffix = suffix_arr[idx]
    table << longest_common(prefix, suffix)
  end

  table

end

def longest_common(prefix, suffix)
  len = 0
  hash = {}
  prefix.each do |pre|
    hash[pre] = true
  end

  suffix.each do |suf|
    len = suf.length if hash[suf] && suf.length > len
  end

  len
end

# str = 'ABCDABCEABCDABCDABDABCDABDCA'
# substr = 'ABCDABD'
# p partial_match_table(str)

def kmp_search(str,substr)

  table = partial_match_table(substr)

  i = str.index(substr[0])
  idx_arr = []
  sub_len = substr.length
  matched_letter_cnt = 0
  if  i
    matched_letter_cnt = 1
    return 1 if i + matched_letter_cnt >= str.length
  else
    return 0
  end

  # while i && i < str.length - substr.length + 1
  while i && i + substr.length < str.length
    # number of matched chars
    matched_letter_cnt += 1 while str[i + matched_letter_cnt] == substr[matched_letter_cnt]
    if matched_letter_cnt == sub_len
      idx_arr << i
    end

    # p matched_letter_cnt, 'matched_letter_cnt'
    # p 'here'
    partial_match = table[matched_letter_cnt-1]

    step = matched_letter_cnt - partial_match
    if step == 0
      i += 1
      matched_letter_cnt = 0
    else
      i += matched_letter_cnt - partial_match
      matched_letter_cnt = partial_match
    end
    
  end

  idx_arr.count
end

# p kmp_search(str,substr)
#!/bin/ruby

# n = gets.strip.to_i
# genes = gets.strip
# genes = genes.split(' ')
# health = gets.strip
# health = health.split(' ').map(&:to_i)

# def dna_health1(genes, health, first, last, d)
#   total = 0

#   sub_genes = genes[first..last]
#   sub_health = health[first..last]
#   health_hash = {}
#   sub_genes.each_with_index do |gene, idx|
#     cur_health = sub_health[idx]
#     if health_hash[gene]
#       health_hash[gene] += cur_health
#     else
#       health_hash[gene] = cur_health
#     end
#   end
#   health_hash.keys.each do |gene|
#       cur_d = d.dup  
#       cur_health = health_hash[gene]
#       i = cur_d.index(gene)
#       while i
#         total += cur_health
#         cur_d = cur_d[i + 1..-1]
#         break unless cur_d
#         i = cur_d.index(gene)
#       end
#   end

#   total
# end

def dna_health(genes, health, first, last, d)
  total = 0
  health_hash = {}

  sub_genes = genes[first..last]
  sub_health = health[first..last]
  sub_genes.each_with_index do |gene, idx|
      cur_d = d.dup  
      cur_health = sub_health[idx] 
      cnt = kmp_search(d, gene)
      total += cnt * cur_health

  end

  total

end

# s = gets.strip.to_i

health_map = []


genes = ['a','b','c','aa','d','b']
health = [1,2,3,4,5,6]
first = 1
last = 5
d = 'caaab'
# for a0 in (0..s-1)
#     first,last,d = gets.strip.split(' ')
#     first = first.to_i
#     last = last.to_i
#     # your code goes here
  # current_health = dna_health(genes, health, first, last, d)
  # if health_map.empty?
  #   health_map = [current_health, current_health]
  # elsif current_health > health_map.last
  #   health_map[1] = current_health
  # elsif current_health < health_map.first
  #   health_map[0] = current_health
  # end
# end

# print health_map[0]," ", health_map[1]

# p dna_health(genes, health, first, last, d)

genes[1..5].each do |gene|
  p gene, kmp_search(d,gene)
  p "_____"
end
# p kmp_search(d,'aa')
