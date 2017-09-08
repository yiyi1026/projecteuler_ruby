'''Given a positive integer, return its corresponding column title as appear in an Excel sheet.

For example:

    1 -> A
    2 -> B
    3 -> C
    ...
    26 -> Z
    27 -> AA
    28 -> AB '''

def convert_to_title(n)
  # 26 scale
  scale_arr = ('A'..'Z').to_a
  result=''

  i = 0
  until 26 ** (i+1) > n
    i += 1
  end

  while n > 26 && i > 0
    new_digit = n / (26 ** i)
    n %= (26 ** i)
    result += scale_arr[new_digit-1]
    i -= 1
  end

  if n > 0
    result += scale_arr[n-1]
  else

  end

  result
end

p convert_to_title(27)