'''
Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

For example, given n = 3, a solution set is:

[
  "((()))",
  "(()())",
  "(())()",
  "()(())",
  "()()()"
]
'''
# ret = []

def generate_parenthesis(n, tmp='', lpc= 0, rpc = 0, ret = [])
  # end condition
  ret << tmp if n == lpc && n == rpc

  # recursive call
  ret += generate_parenthesis(n, tmp + '(', lpc+1, rpc ) if lpc < n
  ret += generate_parenthesis(n, tmp + ')', lpc, rpc+1 ) if lpc > rpc
  ret
end

p generate_parenthesis(4)
# p @ret