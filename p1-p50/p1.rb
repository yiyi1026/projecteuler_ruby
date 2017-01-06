#P1
#If we list all the natural numbers below 10 that are multiples of 3 or 5, 
#we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.
##multiples of 3 and 5 are also included

#Solution 1
def multiples_of_3_and_5(n)
  sum =  0
  for i in 3...n
    sum += i if i % 3 == 0||i % 5 == 0
  end
  return sum
end

#Solution 2-One line solution,  
p (3...1000).select{|x|x % 3 == 0||x % 5 == 0}.reduce(:+)
