#P22
#Using names.txt (right click and 'Save Link/Target As...'), a 46K text file 
#containing over five-thousand first names, begin by sorting it into 
#alphabetical order. Then working out the alphabetical value for each name, 
#multiply this value by its alphabetical position in the list to obtain 
#a name score.
#For example, when the list is sorted into alphabetical order, COLIN, 
#which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. 
#So, COLIN would obtain a score of 938 × 53 = 49714.
#What is the total of all the name scores in the file?

source=File.open('F:\projecteuler_source\p022_names.txt','r')


def names_scores(names_txt)
  alphabet_str='0ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  alphabet_lst=alphabet_str.split('')
  sum=0
  a=names_txt.first.split(',').sort
  for i in 0...a.length
    name=a[i].split('')
    score=0
    for j in 1...name.length-1
      score=score+alphabet_lst.index(name[j])
    end
    sum+=score*(i+1)
  end
  return sum
end  

p names_scores(source)















