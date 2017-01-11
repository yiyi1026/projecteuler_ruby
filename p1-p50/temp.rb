@totalMax = 0

# return 1 / m
def my_div(m , digit_round)
  # ret = %w(0 .)
  ret = Array.new
  mod = 1
  cnt = 1
  while mod !=0 && cnt != digit_round
    denominator = mod * 10
    ret.push( (denominator/m).to_s )
    mod = denominator % m
    cnt += 1
  end
  # ret.shift(10)
  ret.join('')
end

def find_rec(str, num,  deno_digit)
  lst = Array.new
  matching_cnt = 0
  i = 0
  while i < str.length
    if lst.include?(str[i])
      lst.push(str[i])
      if lst[matching_cnt] == str[i]
        matching_cnt += 1
      else
        matching_cnt = 0
      end
      if matching_cnt == deno_digit
        end_index = i - matching_cnt
        ret = str[0, end_index + 1]
        # p ret
        if ret.length > @totalMax
          @totalMax = ret.length
          p 'current max number is ' + num.to_s + ' : ' +  @totalMax.to_s
        end
        return ret.length
      end
    else
      lst.push(str[i])
      matching_cnt = 0
    end
    i+=1
  end
end

# p my_div(977, 1000)
#
# p find_rec(my_div(23,100), 2)

(1..1000).each{ |x| find_rec(my_div(x, 10000), x, x.to_s.length)}