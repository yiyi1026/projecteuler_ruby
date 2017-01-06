#P42
#Coded triangle numbers
#Problem 42
#The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); 
#so the first ten triangle numbers are:
#1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#By converting each letter in a word to a number corresponding to its alphabetical position 
#and adding these values we form a word value. For example, the word value for SKY is 
#19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word 
#a triangle word.
#Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing 
#nearly two-thousand common English words, how many are triangle words?
source=File.open('F:\workspace\project_euler_problems_ruby\p042_words.txt','r')
def triangle_numbers(n)
  i=1
  while i*(i+1)<2*n
    i+=1
  end
  return true  if i*(i+1)==2*n
end
def coded_triangle_numbers(file)
  cnt=0
  letterlist='0ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  file_read=file.first.split(',')
  for i in 0...file_read.length
    sum=0
    file_read[i].split('')[1,file_read[i].length-2].each{|x|sum+=letterlist.index(x)}
    cnt+=1 if triangle_numbers(sum)
  end
  return cnt  
end
p coded_triangle_numbers(source)









