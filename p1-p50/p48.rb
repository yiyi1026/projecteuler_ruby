#P48
a=Time.now
def self_power(n)
  sum=0
  for i in 1..n
    sum+=i**i
  end
  return sum.to_s[-10,10].to_i
end

p self_power(1000)
p Time.now-a