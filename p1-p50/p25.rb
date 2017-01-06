#P25
#What is the index of the first term in the Fibonacci sequence 
#to contain 1000 digits?
def fibonacci_number(n)
  #define nth Fibonacci term
  fibonacci_lst=[0,1] #F1=1,F2=1
  for i in 2..n
    fibonacci_lst[i]=fibonacci_lst[i-1]+fibonacci_lst[i-2]
  end
  return fibonacci_lst[n]
end


def n_digit_fibonacci_number(n)
  #find which term of fibonacci_number has over n digits.
  i=1
  while fibonacci_number(i).to_s.length<n
    i+=1
  end
  return i
end
