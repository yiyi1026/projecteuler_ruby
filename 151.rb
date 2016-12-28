
@single_p_count = 0

def recursive_find(a2, a3, a4, a5, prob)
  p a2.to_s + a3.to_s + a4.to_s + a5.to_s
  
  sum = a2 + a3 + a4 + a5
  return if sum == 0
  if sum == 1
    if a5 == 1
      return
    end
    @single_p_count += prob 
  end
  if a2 > 0 
    recursive_find(a2-1, a3+1, a4+1, a5+1, prob * a2/sum)
  end
  if a3 > 0 
    recursive_find(a2, a3-1, a4+1, a5+1, prob * a3/sum)
  end
  if a4 > 0 
    recursive_find(a2, a3, a4-1, a5+1, prob * a4/sum)
  end
  if a5 > 0 
    recursive_find(a2, a3, a4, a5-1, prob * a5/sum)
  end
  
end

recursive_find(1,1,1,1, 1.0)
p @single_p_count
