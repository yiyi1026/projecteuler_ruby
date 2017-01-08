
# f(2n+1) = f(n)
# f(2n) = f(n) + f(n-1)

def f(n)
  return 1 if n < 2
  return 2 if n == 2

  if n % 2 == 1
    return f( (n-1) /2)
  else
    tmp = n / 2
    m = 1
    while tmp % 2 == 0
      m+=1
      tmp = tmp / 2
    end
    return f(tmp) + m* f(tmp-1)
  end
end

a = Time.now
# p f(241)
p f(10**25)
p Time.now - a