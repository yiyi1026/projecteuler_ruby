'''
The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

P   A   H   N
A P L S I I G
Y   I   R
And then read line by line: "PAHNAPLSIIGYIR"
Write the code that will take a string and make this conversion given a number of rows:

string convert(string text, int nRows);
convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".
'''

def convert(s, num_rows)
  len = s.length
  return s if len <= num_rows || num_rows == 1
  converted = Array.new(num_rows, "") 
  s.chars.each_with_index do |char, idx|
    rem = idx % (num_rows*2-2)
    if rem < num_rows
      converted[rem] += char
    else
      converted[2*num_rows-2-rem] += char
    end
  end

  converted.join("")
end

s = "PAYPALISHIRING"
p convert(s, 3)

