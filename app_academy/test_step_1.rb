# 1-1
# A "slippery number" has 3 as a factor or has 5 as a factor, but not both. 6 is a slippery, but 30 is not. Define a method that returns a boolean indicating whether its argument is slippery.
def is_slippery?(n)
  (n%3==0 || n%5==0) && n%15!=0

end

# Write a method that, given an integer n, returns an array of the first n slippery numbers.
# slippery_numbers(7) => [3, 5, 6, 9, 10, 12, 18]
def slippery_numbers(n)
  cnt=0
  rtn=[]
  num=0
  until rtn.length==n
    rtn<<num if is_slippery?(num)
    num+=1
  end
  rtn
end

# Define a method, #e_words(str), that accepts a string as an argument. Your method return the number of
# words in the string that end with the letter "e".
# e_words("tree") => 1
# e_words("Let be be finale of seem.") => 3
def e_words(str)
  str=str.split(" ")
  str.select{|x|x[-1]=='e'}.count
end

# The Fibonacci Sequence follows a simple rule: the next number in the sequence is the sum of the previous
# two. The sequence begins with [0, 1]. One computes the third number by summing the first and  second (0
# + 1 == 1), yielding [0, 1, 1], one computes the fourth number by summing the second and the third,
# yielding [0, 1, 1, 2], and so on.
# Define a method, #fibs, that accepts an integer as an argument. The method should return an array of the
#first n Fibonacci numbers.
# fibs(1) => [0]
# fibs(6) => [0, 1, 1, 2, 3, 5]
def fibs(n)
  lst=[0, 1]
  until lst.length>=n
    lst<<lst[-1]+lst[-2]
  end
  lst
end
#1-2
# Define a method that returns the sum of all the non-negative integers up to and including its argument.
# sum_to(3) => 6
def sum_to(int)
  (0..int).reduce(:+)
end

# A magic number is a number whose digits, when added together, sum to 7, e.g., 34. Define a method that returns an array of the first n magic numbers. You may wish to write a helper method that returns a boolean indicating whether a number is magic.
# magic_numbers(3) => [7, 16, 25]
def magic_number?(n)
  cnt=0
  n.to_s.split('').map{|x|cnt+=x.to_i}
  cnt==7
end

def magic_numbers(n)
  i=1
  rtn=[]
  until rtn.length==n
    rtn<<i if magic_number?(i)
    i+=1
  end
  rtn
end


# Define a method that given an array, returns another array of only the unique elements from the first. Do not use the built-in uniq method.
# uniq([5, 5, 5, 5]) => [5]
# uniq([1, 2, 1, 3, 3]) => [1, 2, 3]
def uniq(arr)
  i=0
  rtn=[]
  arr.each do |x|
    rtn<<x unless rtn.include?(x)
  end
  rtn
end

# Define a method that receives two arrays as arguments and returns a new array of arguments unique among both arrays (but not necessarily within the array it occurs). Maintain original (intra- and inter-array) order.
# all_uniqs([1, 1, 3, 6], [2, 3, 6]) => [1, 2]
# all_uniqs([1, 2, 3], [1, 2, 3]) => []
def all_uniqs(arr1, arr2)
  (((arr1+arr2)-arr2) +((arr1+arr2)-arr1)).uniq
end

# 1-3
# Define a method that reverses the digits of its argument and returns the resulting number.
# reverse_digits(1738) => 8371
def reverse_digits(int)
  int.to_s.split("").reverse.join.to_i
end

# Define a method, #pair_product?, that accepts two arguments: an array of integers and a target_product
# (an integer). The method returns a boolean indicating whether any pair of elements in the array
# multiplied together equals that product. You cannot multiply an element by itself. An element on its own
# is not a product.
# pair_product?([3, 1, 5], 15) => true
def pair_product?(arr, target_product)
  arr.each_index do |idx|
    arr_no_idx=arr[0...idx]+arr[idx...arr.length]
    return true if arr_no_idx.include?(target_product/arr[idx])
  end
  return false
end
#p pair_product?([3, 1, 2], 9)

# Define a method, #slice_between_vowels(word), that accepts a string as an argument. Your method should
# return the slice of the word between the first and last vowels of that word. Return an empty string if
# the word has less than 2 vowels.
# slice_between_vowels("serendipity") => "rendip"
# slice_between_vowels("train") => ""
# slice_between_vowels("dog") => ""
def slice_between_vowels(word)
  left_idx=0
  right_idx=word.length-1

  vowels=['a','e','i','o','u']
  until vowels.include?(word[left_idx])
    left_idx+=1
  end
  until vowels.include?(word[right_idx])
    right_idx-=1
  end
  word[(left_idx+1)..(right_idx-1)]
end

#1-4
# Define a method that, given an array of numbers, returns another array with each of the argument's
# numbers multiplied by two. Do not modify the original array.
def array_times_two(arr)
  arr.map{|x|x*2}
end

# Define a method that, given an array of numbers, mulitplies each of its elemnets by two. This SHOULD
# mutate the original array!
def array_times_two!(arr)
  arr.each_index do |idx|
    arr[idx]==arr[idx]*2
  end
end
#p array_times_two!([2,3,4])

# Define a method that substitutes all five-letter words in its argument with "#####" and returns the
# result. Do not consider punctuation.
# redact_five_letter_words("long longer longest longy") => "long longer longest #####"
def redact_five_letter_words(str)
  str_lst=str.split(' ')
  i=0
  ret=[]
  str.split.each do  |word|
    if word.length==5
      ret<<'#####'
    else
      ret<< word
    end
  end
  ret
end

# p redact_five_letter_words("long longer longest longy")

# Define a method that takes an array of pairs (two-element arrays) and returns the pair with the greatest
# sum.
# largest_pair([[-4,0],[-2,-1],[-3,2]]) => [-3,2]
# largest_pair([[1,0]]) => [1,0]
def largest_pair(pairs_array)
  i=0
  max_pair=pairs_array[0]
  pairs_array.each do |x|
    if x[0]+x[1]>max_pair[0]+max_pair[1]
      max_pair=x
    end
  end
  max_pair
end

#1-5
# Define a method that returns a boolean indicating whether its argument is a palindrome.
def palindrome?(str)
  str.reverse==str

end

# Define a method, boolean_to_binary(arr), that accepts an array of booleans as an argument. Your method
# should convert the array into a string of 1's (for true values) and 0's (for false values) and return the
# result.
# boolean_to_binary([true]) => "1"
# boolean_to_binary([true, false, true]) => "101"
def boolean_to_binary(arr)
  rtn=''
  arr.each do |bi|
    if bi
      rtn+='1'
    else
      rtn+='0'
    end
  end

  rtn
end


# Define a method that returns the third-largest element in an array. Assume the argument has at least
# three elements.
# third_greatest([5, 9, 3, 7, 7, 2, 10]) == 7
def third_largest(arr)
  arr.sort[-3]

end

# Define a method that takes a number of minutes as its argument and returns a string formatted HH:MM.
# Assume the number of hours is always less than 99.
# time_conversion(90) => "01:30"
# time_conversion(0) => "00:00"
def time_conversion(mins)
  hrs=(mins/60).to_s
  mins=(mins%60).to_s
  rtn=''
  if hrs<'10'
    hrs=(0.to_s)+hrs
  end
  if mins<'10'
    mins=(0.to_s)+mins
  end
  return hrs+':'+mins
end
