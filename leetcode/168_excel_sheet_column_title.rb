'''Given a positive integer, return its corresponding column title as appear in an Excel sheet.

For example:

    1 -> A
    2 -> B
    3 -> C
    ...
    26 -> Z
    27 -> AA
    28 -> AB 
'''

def convert_to_title(n)
  # 26 scale
  scale_arr = [""] + ('A'..'Z').to_a
  if n <= 26
    return scale_arr[n]
  end

  remainder = n % 26
  remainder = 26 if remainder == 0
  quo = (n-1) / 26
  convert_to_title(quo) + convert_to_title(remainder)

end


p convert_to_title(27) 
p convert_to_title(28)
p convert_to_title(52) 