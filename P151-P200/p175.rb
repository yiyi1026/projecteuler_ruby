def p175 (p, q)
  answer = Array.new;
  while q != 0
    if p > q
      answer.unshift( p / q - (p % q == 0 ? 1 : 0))
      p = p % q == 0 ? q : p % q
    else
      answer.unshift(q / p)
      q %= p
    end
  end
  answer.join(',')
end

start = Time.now
p p175(123456789, 987654321)
p Time.now - start