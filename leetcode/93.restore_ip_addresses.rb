'''
Given a string containing only digits, restore it by returning all possible valid IP address combinations.

For example:
Given "25525511135",

return ["255.255.11.135", "255.255.111.35"]. (Order does not matter)
'''
# @param {String} s
# @return {String[]}
def valid?(address)
  # decide whether s could be separated into s valid address parts.
  split = address.split(".")
  return false unless split.length == 4 
  split.each do |str|
    # return false if str.length > 1 && str[0] == '0'
    return false unless str.to_i < 256
  end
  true
end

def restore_ip_addresses(s, temp='', num = 0, solution=[])
  if s.length < 1
    solution << temp if valid?(temp)
    return
  end

  cnt = [s.length, 3].min
  cnt.times do |i|
    if temp.empty?
      return [] if s.length > 12 || s.length < 4
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

