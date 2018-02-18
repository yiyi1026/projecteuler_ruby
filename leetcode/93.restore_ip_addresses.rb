'''
Given a string containing only digits, restore it by returning all possible valid IP address combinations.

For example:
Given "25525511135",

return ["255.255.11.135", "255.255.111.35"]. (Order does not matter)
'''
# @param {String} s
# @return {String[]}

def valid?(address, num)
  # decide whether s could be separated into s valid address parts.
  split = address.split(".")
  return false unless num == 4 
  split.none?{|str|(str.length > 1 && str[0] == '0') || str.to_i > 255}
end

def restore_ip_addresses(s, temp='', num = 0, solution=[])
  if s.length < 1
    return [] if temp.empty?
    solution << temp if valid?(temp, num)
    return
  end

  cnt = [s.length, 3].min
  cnt.times do |i|
    if temp.empty?
      return [] unless s.length < 13
      restore_ip_addresses(s[i+1..-1], s[0..i], num + 1, solution)
    else
      restore_ip_addresses(s[i+1..-1], temp+"."+s[0..i], num + 1, solution)
    end
  end

  solution
end
# p valid?('255.255.11.135')
# p restore_ip_addresses("11135",'255.255',2)
p restore_ip_addresses("010010")

