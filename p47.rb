#P47

timer_start=Time.now
require 'prime'
def distinct_primes_factor
  i=4
  while true
    if Prime.prime_division(i+3).length !=4
      i+=4
      next
    elsif Prime.prime_division(i+2).length !=4
      i+=3
      next
    elsif Prime.prime_division(i+1).length !=4
      i+=3
      next
    elsif Prime.prime_division(i).length !=4
      i+=1
      next
    elsif Prime.prime_division(i).length==4&&
      Prime.prime_division(i+1).length==4&&
      Prime.prime_division(i+2).length==4&&
      Prime.prime_division(i+3).length==4
      return i
    else
      i+=1
    end
  end
end
p distinct_primes_factor
p Time.now-timer_start
